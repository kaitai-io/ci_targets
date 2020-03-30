import kaitai_struct_nim_runtime
import options
import encodings

type
  PositionAbs_IndexObj* = ref PositionAbs_IndexObjObj
  PositionAbs_IndexObjObj* = object
    entry*: string
    io*: KaitaiStream
    root*: PositionAbs
    parent*: PositionAbs
  PositionAbs* = ref PositionAbsObj
  PositionAbsObj* = object
    indexOffset*: uint32
    io*: KaitaiStream
    root*: PositionAbs
    parent*: ref RootObj
    indexInst*: Option[PositionAbs_IndexObj]

## PositionAbs_IndexObj
proc read*(_: typedesc[PositionAbs_IndexObj], io: KaitaiStream, root: PositionAbs, parent: PositionAbs): PositionAbs_IndexObj =
  let this = new(PositionAbs_IndexObj)
  let root = if root == nil: cast[PositionAbs](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.entry = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  result = this

proc fromFile*(_: typedesc[PositionAbs_IndexObj], filename: string): PositionAbs_IndexObj =
  PositionAbs_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionAbs_IndexObjObj) =
  close(x.io)

## PositionAbs
proc index*(this: PositionAbs): PositionAbs_IndexObj
proc index(this: PositionAbs): PositionAbs_IndexObj = 
  if isSome(this.indexInst):
    return get(this.indexInst)
  let pos = this.io.pos()
  this.io.seek(this.indexOffset)
  this.indexInst = some(PositionAbs_IndexObj.read(this.io, this.root, this))
  this.io.seek(pos)
  return get(this.indexInst)

proc read*(_: typedesc[PositionAbs], io: KaitaiStream, root: PositionAbs, parent: ref RootObj): PositionAbs =
  let this = new(PositionAbs)
  let root = if root == nil: cast[PositionAbs](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.indexOffset = this.io.readU4le()
  result = this

proc fromFile*(_: typedesc[PositionAbs], filename: string): PositionAbs =
  PositionAbs.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionAbsObj) =
  close(x.io)

