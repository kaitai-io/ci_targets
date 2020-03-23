import kaitai_struct_nim_runtime

type
  ExprSizeofValue0block* = ref ExprSizeofValue0blockObj
  ExprSizeofValue0blockObj* = object
    block1*: Block
    more*: uint16
    io*: KaitaiStream
    root*: ExprSizeofValue0
    parent*: ref RootObj
  ExprSizeofValue0* = ref ExprSizeofValue0Obj
  ExprSizeofValue0Obj* = object
    block1*: Block
    more*: uint16
    io*: KaitaiStream
    root*: ExprSizeofValue0
    parent*: ref RootObj

### ExprSizeofValue0block ###
proc read*(_: typedesc[ExprSizeofValue0block], io: KaitaiStream, root: ExprSizeofValue0, parent: ExprSizeofValue0): ExprSizeofValue0block =
  result = new(ExprSizeofValue0block)
  let root = if root == nil: cast[ExprSizeofValue0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.a = result.io.readU1()
  result.b = result.io.readU4le()
  result.c = result.io.readBytes(2)

proc fromFile*(_: typedesc[ExprSizeofValue0block], filename: string): ExprSizeofValue0block =
  ExprSizeofValue0block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValue0blockObj) =
  close(x.io)

### ExprSizeofValue0 ###
proc read*(_: typedesc[ExprSizeofValue0], io: KaitaiStream, root: ExprSizeofValue0, parent: ref RootObj): ExprSizeofValue0 =
  result = new(ExprSizeofValue0)
  let root = if root == nil: cast[ExprSizeofValue0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.block1 = Block.read(result.io, result, root)
  result.more = result.io.readU2le()

proc fromFile*(_: typedesc[ExprSizeofValue0], filename: string): ExprSizeofValue0 =
  ExprSizeofValue0.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValue0Obj) =
  close(x.io)

