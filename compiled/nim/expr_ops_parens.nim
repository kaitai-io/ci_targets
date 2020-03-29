import kaitai_struct_nim_runtime

type
  ExprOpsParens* = ref ExprOpsParensObj
  ExprOpsParensObj* = object
    io*: KaitaiStream
    root*: ExprOpsParens
    parent*: ref RootObj

### ExprOpsParens ###
proc read*(_: typedesc[ExprOpsParens], io: KaitaiStream, root: ExprOpsParens, parent: ref RootObj): ExprOpsParens =
  result = new(ExprOpsParens)
  let root = if root == nil: cast[ExprOpsParens](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprOpsParens], filename: string): ExprOpsParens =
  ExprOpsParens.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprOpsParensObj) =
  close(x.io)

