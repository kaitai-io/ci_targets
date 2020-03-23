import kaitai_struct_nim_runtime
import encodings

type
  PositionAbsindexObj* = ref PositionAbsindexObjObj
  PositionAbsindexObjObj* = object
    indexOffset*: uint32
    io*: KaitaiStream
    root*: PositionAbs
    parent*: ref RootObj
  PositionAbs* = ref PositionAbsObj
  PositionAbsObj* = object
    indexOffset*: uint32
    io*: KaitaiStream
    root*: PositionAbs
    parent*: ref RootObj

### PositionAbsindexObj ###
proc read*(_: typedesc[PositionAbsindexObj], io: KaitaiStream, root: PositionAbs, parent: PositionAbs): PositionAbsindexObj =
  result = new(PositionAbsindexObj)
  let root = if root == nil: cast[PositionAbs](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.entry = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[PositionAbsindexObj], filename: string): PositionAbsindexObj =
  PositionAbsindexObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionAbsindexObjObj) =
  close(x.io)

### PositionAbs ###
proc read*(_: typedesc[PositionAbs], io: KaitaiStream, root: PositionAbs, parent: ref RootObj): PositionAbs =
  result = new(PositionAbs)
  let root = if root == nil: cast[PositionAbs](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.indexOffset = result.io.readU4le()

proc fromFile*(_: typedesc[PositionAbs], filename: string): PositionAbs =
  PositionAbs.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionAbsObj) =
  close(x.io)

