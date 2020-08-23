import kaitai_struct_nim_runtime
import options

type
  PositionAbs* = ref object of KaitaiStruct
    `indexOffset`*: uint32
    `parent`*: KaitaiStruct
    `indexInst`*: PositionAbs_IndexObj
  PositionAbs_IndexObj* = ref object of KaitaiStruct
    `entry`*: string
    `parent`*: PositionAbs

proc read*(_: typedesc[PositionAbs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): PositionAbs
proc read*(_: typedesc[PositionAbs_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: PositionAbs): PositionAbs_IndexObj

proc index*(this: PositionAbs): PositionAbs_IndexObj

proc read*(_: typedesc[PositionAbs], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): PositionAbs =
  template this: untyped = result
  this = new(PositionAbs)
  let root = if root == nil: cast[PositionAbs](this) else: cast[PositionAbs](root)
  this.io = io
  this.root = root
  this.parent = parent

  let indexOffsetExpr = this.io.readU4le()
  this.indexOffset = indexOffsetExpr

proc index(this: PositionAbs): PositionAbs_IndexObj = 
  if this.indexInst != nil:
    return this.indexInst
  let pos = this.io.pos()
  this.io.seek(int(this.indexOffset))
  let indexInstExpr = PositionAbs_IndexObj.read(this.io, this.root, this)
  this.indexInst = indexInstExpr
  this.io.seek(pos)
  if this.indexInst != nil:
    return this.indexInst

proc fromFile*(_: typedesc[PositionAbs], filename: string): PositionAbs =
  PositionAbs.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[PositionAbs_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: PositionAbs): PositionAbs_IndexObj =
  template this: untyped = result
  this = new(PositionAbs_IndexObj)
  let root = if root == nil: cast[PositionAbs](this) else: cast[PositionAbs](root)
  this.io = io
  this.root = root
  this.parent = parent

  let entryExpr = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
  this.entry = entryExpr

proc fromFile*(_: typedesc[PositionAbs_IndexObj], filename: string): PositionAbs_IndexObj =
  PositionAbs_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

