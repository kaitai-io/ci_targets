import kaitai_struct_nim_runtime
import options

type
  PositionToEnd* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `indexInst`: PositionToEnd_IndexObj
    `indexInstFlag`: bool
  PositionToEnd_IndexObj* = ref object of KaitaiStruct
    `foo`*: uint32
    `bar`*: uint32
    `parent`*: PositionToEnd

proc read*(_: typedesc[PositionToEnd], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): PositionToEnd
proc read*(_: typedesc[PositionToEnd_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: PositionToEnd): PositionToEnd_IndexObj

proc index*(this: PositionToEnd): PositionToEnd_IndexObj

proc read*(_: typedesc[PositionToEnd], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): PositionToEnd =
  template this: untyped = result
  this = new(PositionToEnd)
  let root = if root == nil: cast[PositionToEnd](this) else: cast[PositionToEnd](root)
  this.io = io
  this.root = root
  this.parent = parent


proc index(this: PositionToEnd): PositionToEnd_IndexObj = 
  if this.indexInstFlag:
    return this.indexInst
  let pos = this.io.pos()
  this.io.seek(int(this.io.size - 8))
  let indexInstExpr = PositionToEnd_IndexObj.read(this.io, this.root, this)
  this.indexInst = indexInstExpr
  this.io.seek(pos)
  this.indexInstFlag = true
  return this.indexInst

proc fromFile*(_: typedesc[PositionToEnd], filename: string): PositionToEnd =
  PositionToEnd.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[PositionToEnd_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: PositionToEnd): PositionToEnd_IndexObj =
  template this: untyped = result
  this = new(PositionToEnd_IndexObj)
  let root = if root == nil: cast[PositionToEnd](this) else: cast[PositionToEnd](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU4le()
  this.foo = fooExpr
  let barExpr = this.io.readU4le()
  this.bar = barExpr

proc fromFile*(_: typedesc[PositionToEnd_IndexObj], filename: string): PositionToEnd_IndexObj =
  PositionToEnd_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

