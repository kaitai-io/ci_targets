import kaitai_struct_nim_runtime

type
  ExprSizeofValueSized_Block* = ref ExprSizeofValueSized_BlockObj
  ExprSizeofValueSized_BlockObj* = object
    a*: uint8
    b*: uint32
    c*: string
    io*: KaitaiStream
    root*: ExprSizeofValueSized
    parent*: ExprSizeofValueSized
  ExprSizeofValueSized* = ref ExprSizeofValueSizedObj
  ExprSizeofValueSizedObj* = object
    block1*: ExprSizeofValueSized_Block
    more*: uint16
    io*: KaitaiStream
    root*: ExprSizeofValueSized
    parent*: ref RootObj
    rawBlock1*: string

### ExprSizeofValueSized_Block ###
proc read*(_: typedesc[ExprSizeofValueSized_Block], io: KaitaiStream, root: ExprSizeofValueSized, parent: ExprSizeofValueSized): ExprSizeofValueSized_Block =
  result = new(ExprSizeofValueSized_Block)
  let root = if root == nil: cast[ExprSizeofValueSized](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let a = io.readU1()
  result.a = a
  let b = io.readU4le()
  result.b = b
  let c = io.readBytes(int(2))
  result.c = c

proc fromFile*(_: typedesc[ExprSizeofValueSized_Block], filename: string): ExprSizeofValueSized_Block =
  ExprSizeofValueSized_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValueSized_BlockObj) =
  close(x.io)

### ExprSizeofValueSized ###
proc read*(_: typedesc[ExprSizeofValueSized], io: KaitaiStream, root: ExprSizeofValueSized, parent: ref RootObj): ExprSizeofValueSized =
  result = new(ExprSizeofValueSized)
  let root = if root == nil: cast[ExprSizeofValueSized](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let rawBlock1 = io.readBytes(int(12))
  result.rawBlock1 = rawBlock1
  let rawBlock1Io = newKaitaiStringStream(rawBlock1)
  let block1 = ExprSizeofValueSized_Block.read(rawBlock1Io, result, root)
  result.block1 = block1
  let more = io.readU2le()
  result.more = more

proc fromFile*(_: typedesc[ExprSizeofValueSized], filename: string): ExprSizeofValueSized =
  ExprSizeofValueSized.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValueSizedObj) =
  close(x.io)

