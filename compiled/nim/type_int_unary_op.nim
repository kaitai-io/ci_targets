import kaitai_struct_nim_runtime

type
  TypeIntUnaryOp* = ref TypeIntUnaryOpObj
  TypeIntUnaryOpObj* = object
    valueS2*: int16
    valueS8*: int64
    io*: KaitaiStream
    root*: TypeIntUnaryOp
    parent*: ref RootObj

### TypeIntUnaryOp ###
proc read*(_: typedesc[TypeIntUnaryOp], io: KaitaiStream, root: TypeIntUnaryOp, parent: ref RootObj): TypeIntUnaryOp =
  result = new(TypeIntUnaryOp)
  let root = if root == nil: cast[TypeIntUnaryOp](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.valueS2 = result.io.readS2le()
  result.valueS8 = result.io.readS8le()

proc fromFile*(_: typedesc[TypeIntUnaryOp], filename: string): TypeIntUnaryOp =
  TypeIntUnaryOp.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TypeIntUnaryOpObj) =
  close(x.io)

