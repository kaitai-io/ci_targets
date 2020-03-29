import kaitai_struct_nim_runtime

type
  ExprSizeofType1_Block_Subblock* = ref ExprSizeofType1_Block_SubblockObj
  ExprSizeofType1_Block_SubblockObj* = object
    a*: string
    io*: KaitaiStream
    root*: ExprSizeofType1
    parent*: ref RootObj
  ExprSizeofType1_Block* = ref ExprSizeofType1_BlockObj
  ExprSizeofType1_BlockObj* = object
    a*: uint8
    b*: uint32
    c*: string
    d*: ExprSizeofType1_Block_Subblock
    io*: KaitaiStream
    root*: ExprSizeofType1
    parent*: ref RootObj
  ExprSizeofType1* = ref ExprSizeofType1Obj
  ExprSizeofType1Obj* = object
    io*: KaitaiStream
    root*: ExprSizeofType1
    parent*: ref RootObj

### ExprSizeofType1_Block_Subblock ###
proc read*(_: typedesc[ExprSizeofType1_Block_Subblock], io: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): ExprSizeofType1_Block_Subblock =
  result = new(ExprSizeofType1_Block_Subblock)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let a = io.readBytes(int(4))
  result.a = a

proc fromFile*(_: typedesc[ExprSizeofType1_Block_Subblock], filename: string): ExprSizeofType1_Block_Subblock =
  ExprSizeofType1_Block_Subblock.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType1_Block_SubblockObj) =
  close(x.io)

### ExprSizeofType1_Block ###
proc read*(_: typedesc[ExprSizeofType1_Block], io: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): ExprSizeofType1_Block =
  result = new(ExprSizeofType1_Block)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let a = io.readU1()
  result.a = a
  let b = io.readU4le()
  result.b = b
  let c = io.readBytes(int(2))
  result.c = c
  let d = ExprSizeofType1_Block_Subblock.read(io, result, root)
  result.d = d

proc fromFile*(_: typedesc[ExprSizeofType1_Block], filename: string): ExprSizeofType1_Block =
  ExprSizeofType1_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType1_BlockObj) =
  close(x.io)

### ExprSizeofType1 ###
proc read*(_: typedesc[ExprSizeofType1], io: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): ExprSizeofType1 =
  result = new(ExprSizeofType1)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[ExprSizeofType1], filename: string): ExprSizeofType1 =
  ExprSizeofType1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType1Obj) =
  close(x.io)

