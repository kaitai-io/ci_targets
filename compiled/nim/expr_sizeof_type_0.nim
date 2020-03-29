import kaitai_struct_nim_runtime

type
  ExprSizeofType0_Block* = ref ExprSizeofType0_BlockObj
  ExprSizeofType0_BlockObj* = object
    a*: uint8
    b*: uint32
    c*: string
    io*: KaitaiStream
    root*: ExprSizeofType0
    parent*: ref RootObj
  ExprSizeofType0* = ref ExprSizeofType0Obj
  ExprSizeofType0Obj* = object
    io*: KaitaiStream
    root*: ExprSizeofType0
    parent*: ref RootObj

### ExprSizeofType0_Block ###
proc read*(_: typedesc[ExprSizeofType0_Block], io: KaitaiStream, root: ExprSizeofType0, parent: ref RootObj): ExprSizeofType0_Block =
  result = new(ExprSizeofType0_Block)
  let root = if root == nil: cast[ExprSizeofType0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let a = io.readU1()
  result.a = a
  let b = io.readU4le()
  result.b = b
  let c = io.readBytes(int(2))
  result.c = c

proc fromFile*(_: typedesc[ExprSizeofType0_Block], filename: string): ExprSizeofType0_Block =
  ExprSizeofType0_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType0_BlockObj) =
  close(x.io)

### ExprSizeofType0 ###
proc read*(_: typedesc[ExprSizeofType0], io: KaitaiStream, root: ExprSizeofType0, parent: ref RootObj): ExprSizeofType0 =
  result = new(ExprSizeofType0)
  let root = if root == nil: cast[ExprSizeofType0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprSizeofType0], filename: string): ExprSizeofType0 =
  ExprSizeofType0.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType0Obj) =
  close(x.io)

