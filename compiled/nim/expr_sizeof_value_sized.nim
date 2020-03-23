import kaitai_struct_nim_runtime

type
  ExprSizeofValueSizedblock* = ref ExprSizeofValueSizedblockObj
  ExprSizeofValueSizedblockObj* = object
    block1*: Block
    more*: uint16
    io*: KaitaiStream
    root*: ExprSizeofValueSized
    parent*: ref RootObj
    rawBlock1*: string
  ExprSizeofValueSized* = ref ExprSizeofValueSizedObj
  ExprSizeofValueSizedObj* = object
    block1*: Block
    more*: uint16
    io*: KaitaiStream
    root*: ExprSizeofValueSized
    parent*: ref RootObj
    rawBlock1*: string

### ExprSizeofValueSizedblock ###
proc read*(_: typedesc[ExprSizeofValueSizedblock], io: KaitaiStream, root: ExprSizeofValueSized, parent: ExprSizeofValueSized): ExprSizeofValueSizedblock =
  result = new(ExprSizeofValueSizedblock)
  let root = if root == nil: cast[ExprSizeofValueSized](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.a = result.io.readU1()
  result.b = result.io.readU4le()
  result.c = result.io.readBytes(2)

proc fromFile*(_: typedesc[ExprSizeofValueSizedblock], filename: string): ExprSizeofValueSizedblock =
  ExprSizeofValueSizedblock.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValueSizedblockObj) =
  close(x.io)

### ExprSizeofValueSized ###
proc read*(_: typedesc[ExprSizeofValueSized], io: KaitaiStream, root: ExprSizeofValueSized, parent: ref RootObj): ExprSizeofValueSized =
  result = new(ExprSizeofValueSized)
  let root = if root == nil: cast[ExprSizeofValueSized](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rawBlock1 = result.io.readBytes(12)
  rawBlock1Io = newKaitaiStringStream(rawBlock1)
  result.block1 = Block.read(rawBlock1Io, result, root)
  result.more = result.io.readU2le()

proc fromFile*(_: typedesc[ExprSizeofValueSized], filename: string): ExprSizeofValueSized =
  ExprSizeofValueSized.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValueSizedObj) =
  close(x.io)

