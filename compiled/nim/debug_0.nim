import kaitai_struct_nim_runtime
import options

type
  Debug0* = ref object of KaitaiStruct
    `one`*: uint8
    `arrayOfInts`*: seq[uint8]
    `unnamed2`*: uint8
    `parent`*: KaitaiStruct

proc read*(_: typedesc[Debug0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Debug0


proc read*(_: typedesc[Debug0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Debug0 =
  template this: untyped = result
  this = new(Debug0)
  let root = if root == nil: cast[Debug0](this) else: cast[Debug0](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU1()
  this.one = oneExpr
  for i in 0 ..< int(3):
    let it = this.io.readU1()
    this.arrayOfInts.add(it)
  let unnamed2Expr = this.io.readU1()
  this.unnamed2 = unnamed2Expr

proc fromFile*(_: typedesc[Debug0], filename: string): Debug0 =
  Debug0.read(newKaitaiFileStream(filename), nil, nil)

