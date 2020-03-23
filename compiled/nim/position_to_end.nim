import kaitai_struct_nim_runtime

type
  PositionToEndindexObj* = ref PositionToEndindexObjObj
  PositionToEndindexObjObj* = object
    io*: KaitaiStream
    root*: PositionToEnd
    parent*: ref RootObj
  PositionToEnd* = ref PositionToEndObj
  PositionToEndObj* = object
    io*: KaitaiStream
    root*: PositionToEnd
    parent*: ref RootObj

### PositionToEndindexObj ###
proc read*(_: typedesc[PositionToEndindexObj], io: KaitaiStream, root: PositionToEnd, parent: PositionToEnd): PositionToEndindexObj =
  result = new(PositionToEndindexObj)
  let root = if root == nil: cast[PositionToEnd](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.foo = result.io.readU4le()
  result.bar = result.io.readU4le()

proc fromFile*(_: typedesc[PositionToEndindexObj], filename: string): PositionToEndindexObj =
  PositionToEndindexObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionToEndindexObjObj) =
  close(x.io)

### PositionToEnd ###
proc read*(_: typedesc[PositionToEnd], io: KaitaiStream, root: PositionToEnd, parent: ref RootObj): PositionToEnd =
  result = new(PositionToEnd)
  let root = if root == nil: cast[PositionToEnd](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[PositionToEnd], filename: string): PositionToEnd =
  PositionToEnd.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionToEndObj) =
  close(x.io)

