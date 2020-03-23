import kaitai_struct_nim_runtime

type
  ExprCalcArrayOps* = ref ExprCalcArrayOpsObj
  ExprCalcArrayOpsObj* = object
    io*: KaitaiStream
    root*: ExprCalcArrayOps
    parent*: ref RootObj

### ExprCalcArrayOps ###
proc read*(_: typedesc[ExprCalcArrayOps], io: KaitaiStream, root: ExprCalcArrayOps, parent: ref RootObj): ExprCalcArrayOps =
  result = new(ExprCalcArrayOps)
  let root = if root == nil: cast[ExprCalcArrayOps](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprCalcArrayOps], filename: string): ExprCalcArrayOps =
  ExprCalcArrayOps.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprCalcArrayOpsObj) =
  close(x.io)

