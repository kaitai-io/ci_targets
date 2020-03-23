import kaitai_struct_nim_runtime

type
  ExprEnum* = ref ExprEnumObj
  ExprEnumObj* = object
    one*: uint8
    io*: KaitaiStream
    root*: ExprEnum
    parent*: ref RootObj

### ExprEnum ###
proc read*(_: typedesc[ExprEnum], io: KaitaiStream, root: ExprEnum, parent: ref RootObj): ExprEnum =
  result = new(ExprEnum)
  let root = if root == nil: cast[ExprEnum](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = result.io.readU1()

proc fromFile*(_: typedesc[ExprEnum], filename: string): ExprEnum =
  ExprEnum.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprEnumObj) =
  close(x.io)

