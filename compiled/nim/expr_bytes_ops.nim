import kaitai_struct_nim_runtime

type
  ExprBytesOps* = ref ExprBytesOpsObj
  ExprBytesOpsObj* = object
    one*: string
    io*: KaitaiStream
    root*: ExprBytesOps
    parent*: ref RootObj

### ExprBytesOps ###
proc read*(_: typedesc[ExprBytesOps], io: KaitaiStream, root: ExprBytesOps, parent: ref RootObj): ExprBytesOps =
  result = new(ExprBytesOps)
  let root = if root == nil: cast[ExprBytesOps](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = io.readBytes(int(3))
  result.one = one

proc fromFile*(_: typedesc[ExprBytesOps], filename: string): ExprBytesOps =
  ExprBytesOps.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprBytesOpsObj) =
  close(x.io)

