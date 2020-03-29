import kaitai_struct_nim_runtime

type
  ExprBytesCmp* = ref ExprBytesCmpObj
  ExprBytesCmpObj* = object
    one*: string
    two*: string
    io*: KaitaiStream
    root*: ExprBytesCmp
    parent*: ref RootObj

### ExprBytesCmp ###
proc read*(_: typedesc[ExprBytesCmp], io: KaitaiStream, root: ExprBytesCmp, parent: ref RootObj): ExprBytesCmp =
  result = new(ExprBytesCmp)
  let root = if root == nil: cast[ExprBytesCmp](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = io.readBytes(int(1))
  result.one = one
  let two = io.readBytes(int(3))
  result.two = two

proc fromFile*(_: typedesc[ExprBytesCmp], filename: string): ExprBytesCmp =
  ExprBytesCmp.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprBytesCmpObj) =
  close(x.io)

