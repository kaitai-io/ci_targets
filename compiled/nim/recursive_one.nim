import kaitai_struct_nim_runtime
import options

type
  RecursiveOne* = ref object of KaitaiStruct
    `one`*: uint8
    `next`*: KaitaiStruct
    `parent`*: KaitaiStruct
  RecursiveOne_Fini* = ref object of KaitaiStruct
    `finisher`*: uint16
    `parent`*: RecursiveOne

proc read*(_: typedesc[RecursiveOne], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RecursiveOne
proc read*(_: typedesc[RecursiveOne_Fini], io: KaitaiStream, root: KaitaiStruct, parent: RecursiveOne): RecursiveOne_Fini


proc read*(_: typedesc[RecursiveOne], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RecursiveOne =
  template this: untyped = result
  this = new(RecursiveOne)
  let root = if root == nil: cast[RecursiveOne](this) else: cast[RecursiveOne](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU1()
  this.one = oneExpr
  block:
    let on = (this.one and 3)
    if on == 0:
      let nextExpr = RecursiveOne.read(this.io, this.root, this)
      this.next = nextExpr
    elif on == 1:
      let nextExpr = RecursiveOne.read(this.io, this.root, this)
      this.next = nextExpr
    elif on == 2:
      let nextExpr = RecursiveOne.read(this.io, this.root, this)
      this.next = nextExpr
    elif on == 3:
      let nextExpr = RecursiveOne_Fini.read(this.io, this.root, this)
      this.next = nextExpr

proc fromFile*(_: typedesc[RecursiveOne], filename: string): RecursiveOne =
  RecursiveOne.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[RecursiveOne_Fini], io: KaitaiStream, root: KaitaiStruct, parent: RecursiveOne): RecursiveOne_Fini =
  template this: untyped = result
  this = new(RecursiveOne_Fini)
  let root = if root == nil: cast[RecursiveOne](this) else: cast[RecursiveOne](root)
  this.io = io
  this.root = root
  this.parent = parent

  let finisherExpr = this.io.readU2le()
  this.finisher = finisherExpr

proc fromFile*(_: typedesc[RecursiveOne_Fini], filename: string): RecursiveOne_Fini =
  RecursiveOne_Fini.read(newKaitaiFileStream(filename), nil, nil)

