import kaitai_struct_nim_runtime
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

### PositionAbs_IndexObj ###
proc read*(_: typedesc[PositionAbs_IndexObj], io: KaitaiStream, root: PositionAbs, parent: PositionAbs): PositionAbs_IndexObj =
  result = new(PositionAbs_IndexObj)
  let root = if root == nil: cast[PositionAbs](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let entry = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  result.entry = entry

proc fromFile*(_: typedesc[PositionAbs_IndexObj], filename: string): PositionAbs_IndexObj =
  PositionAbs_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionAbs_IndexObjObj) =
  close(x.io)

### PositionAbs ###
proc read*(_: typedesc[PositionAbs], io: KaitaiStream, root: PositionAbs, parent: ref RootObj): PositionAbs =
  result = new(PositionAbs)
  let root = if root == nil: cast[PositionAbs](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let indexOffset = io.readU4le()
  result.indexOffset = indexOffset

proc fromFile*(_: typedesc[PositionAbs], filename: string): PositionAbs =
  PositionAbs.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionAbsObj) =
  close(x.io)

