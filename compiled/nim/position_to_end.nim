import kaitai_struct_nim_runtime

type
  PositionToEnd_IndexObj* = ref PositionToEnd_IndexObjObj
  PositionToEnd_IndexObjObj* = object
    foo*: uint32
    bar*: uint32
    io*: KaitaiStream
    root*: PositionToEnd
    parent*: PositionToEnd
  PositionToEnd* = ref PositionToEndObj
  PositionToEndObj* = object
    io*: KaitaiStream
    root*: PositionToEnd
    parent*: ref RootObj

### PositionToEnd_IndexObj ###
proc read*(_: typedesc[PositionToEnd_IndexObj], io: KaitaiStream, root: PositionToEnd, parent: PositionToEnd): PositionToEnd_IndexObj =
  result = new(PositionToEnd_IndexObj)
  let root = if root == nil: cast[PositionToEnd](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let foo = io.readU4le()
  result.foo = foo
  let bar = io.readU4le()
  result.bar = bar

proc fromFile*(_: typedesc[PositionToEnd_IndexObj], filename: string): PositionToEnd_IndexObj =
  PositionToEnd_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionToEnd_IndexObjObj) =
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

