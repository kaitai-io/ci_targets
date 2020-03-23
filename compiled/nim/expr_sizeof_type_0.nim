import kaitai_struct_nim_runtime

type
  ExprSizeofType0block* = ref ExprSizeofType0blockObj
  ExprSizeofType0blockObj* = object
    io*: KaitaiStream
    root*: ExprSizeofType0
    parent*: ref RootObj
  ExprSizeofType0* = ref ExprSizeofType0Obj
  ExprSizeofType0Obj* = object
    io*: KaitaiStream
    root*: ExprSizeofType0
    parent*: ref RootObj

### ExprSizeofType0block ###
proc read*(_: typedesc[ExprSizeofType0block], io: KaitaiStream, root: ExprSizeofType0, parent: ref RootObj): ExprSizeofType0block =
  result = new(ExprSizeofType0block)
  let root = if root == nil: cast[ExprSizeofType0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.a = result.io.readU1()
  result.b = result.io.readU4le()
  result.c = result.io.readBytes(2)

proc fromFile*(_: typedesc[ExprSizeofType0block], filename: string): ExprSizeofType0block =
  ExprSizeofType0block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType0blockObj) =
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

