import kaitai_struct_nim_runtime

type
  ExprSizeofValue0_Block* = ref ExprSizeofValue0_BlockObj
  ExprSizeofValue0_BlockObj* = object
    a*: uint8
    b*: uint32
    c*: string
    io*: KaitaiStream
    root*: ExprSizeofValue0
    parent*: ExprSizeofValue0
  ExprSizeofValue0* = ref ExprSizeofValue0Obj
  ExprSizeofValue0Obj* = object
    block1*: ExprSizeofValue0_Block
    more*: uint16
    io*: KaitaiStream
    root*: ExprSizeofValue0
    parent*: ref RootObj

### ExprSizeofValue0_Block ###
proc read*(_: typedesc[ExprSizeofValue0_Block], io: KaitaiStream, root: ExprSizeofValue0, parent: ExprSizeofValue0): ExprSizeofValue0_Block =
  result = new(ExprSizeofValue0_Block)
  let root = if root == nil: cast[ExprSizeofValue0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let a = io.readU1()
  result.a = a
  let b = io.readU4le()
  result.b = b
  let c = io.readBytes(int(2))
  result.c = c

proc fromFile*(_: typedesc[ExprSizeofValue0_Block], filename: string): ExprSizeofValue0_Block =
  ExprSizeofValue0_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValue0_BlockObj) =
  close(x.io)

### ExprSizeofValue0 ###
proc read*(_: typedesc[ExprSizeofValue0], io: KaitaiStream, root: ExprSizeofValue0, parent: ref RootObj): ExprSizeofValue0 =
  result = new(ExprSizeofValue0)
  let root = if root == nil: cast[ExprSizeofValue0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let block1 = ExprSizeofValue0_Block.read(io, result, root)
  result.block1 = block1
  let more = io.readU2le()
  result.more = more

proc fromFile*(_: typedesc[ExprSizeofValue0], filename: string): ExprSizeofValue0 =
  ExprSizeofValue0.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValue0Obj) =
  close(x.io)

