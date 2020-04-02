import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  RecursiveOne* = ref object of KaitaiStruct
    one*: uint8
    next*: KaitaiStruct
    parent*: KaitaiStruct
  RecursiveOne_Fini* = ref object of KaitaiStruct
    finisher*: uint16
    parent*: RecursiveOne

proc read*(_: typedesc[RecursiveOne], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RecursiveOne
proc read*(_: typedesc[RecursiveOne_Fini], io: KaitaiStream, root: KaitaiStruct, parent: RecursiveOne): RecursiveOne_Fini

proc read*(_: typedesc[RecursiveOne], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RecursiveOne =
  template this: untyped = result
  this = new(RecursiveOne)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU1()
  case (this.one and 3)
  of 0:
    this.next = RecursiveOne.read(this.io, this.root, this)
  of 1:
    this.next = RecursiveOne.read(this.io, this.root, this)
  of 2:
    this.next = RecursiveOne.read(this.io, this.root, this)
  of 3:
    this.next = RecursiveOne_Fini.read(this.io, this.root, this)
  else: discard

proc fromFile*(_: typedesc[RecursiveOne], filename: string): RecursiveOne =
  RecursiveOne.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[RecursiveOne_Fini], io: KaitaiStream, root: KaitaiStruct, parent: RecursiveOne): RecursiveOne_Fini =
  template this: untyped = result
  this = new(RecursiveOne_Fini)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.finisher = this.io.readU2le()

proc fromFile*(_: typedesc[RecursiveOne_Fini], filename: string): RecursiveOne_Fini =
  RecursiveOne_Fini.read(newKaitaiFileStream(filename), nil, nil)

