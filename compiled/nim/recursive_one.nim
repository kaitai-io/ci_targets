import kaitai_struct_nim_runtime
import options

type
  RecursiveOne_Fini* = ref RecursiveOne_FiniObj
  RecursiveOne_FiniObj* = object
    finisher*: uint16
    io*: KaitaiStream
    root*: RecursiveOne
    parent*: RecursiveOne
  RecursiveOne* = ref RecursiveOneObj
  RecursiveOneObj* = object
    one*: uint8
    next*: ref RootObj
    io*: KaitaiStream
    root*: RecursiveOne
    parent*: ref RootObj

## RecursiveOne_Fini
proc read*(_: typedesc[RecursiveOne_Fini], io: KaitaiStream, root: RecursiveOne, parent: RecursiveOne): RecursiveOne_Fini =
  let this = new(RecursiveOne_Fini)
  let root = if root == nil: cast[RecursiveOne](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.finisher = this.io.readU2le()
  result = this

proc fromFile*(_: typedesc[RecursiveOne_Fini], filename: string): RecursiveOne_Fini =
  RecursiveOne_Fini.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RecursiveOne_FiniObj) =
  close(x.io)

## RecursiveOne
proc read*(_: typedesc[RecursiveOne], io: KaitaiStream, root: RecursiveOne, parent: ref RootObj): RecursiveOne =
  let this = new(RecursiveOne)
  let root = if root == nil: cast[RecursiveOne](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU1()
  case (this.one and 3)
  of 0:
    this.next = RecursiveOne.read(this.io)
  of 1:
    this.next = RecursiveOne.read(this.io)
  of 2:
    this.next = RecursiveOne.read(this.io)
  of 3:
    this.next = RecursiveOne_Fini.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[RecursiveOne], filename: string): RecursiveOne =
  RecursiveOne.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RecursiveOneObj) =
  close(x.io)

