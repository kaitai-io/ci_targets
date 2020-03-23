import kaitai_struct_nim_runtime
import encodings

type
  ExprStrOps* = ref ExprStrOpsObj
  ExprStrOpsObj* = object
    one*: string
    io*: KaitaiStream
    root*: ExprStrOps
    parent*: ref RootObj

### ExprStrOps ###
proc read*(_: typedesc[ExprStrOps], io: KaitaiStream, root: ExprStrOps, parent: ref RootObj): ExprStrOps =
  result = new(ExprStrOps)
  let root = if root == nil: cast[ExprStrOps](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = convert(result.io.readBytes(5), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[ExprStrOps], filename: string): ExprStrOps =
  ExprStrOps.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprStrOpsObj) =
  close(x.io)

