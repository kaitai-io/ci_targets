import kaitai_struct_nim_runtime

type
  ExprIoEof_OneOrTwo* = ref ExprIoEof_OneOrTwoObj
  ExprIoEof_OneOrTwoObj* = object
    one*: uint32
    two*: uint32
    io*: KaitaiStream
    root*: ExprIoEof
    parent*: ExprIoEof
  ExprIoEof* = ref ExprIoEofObj
  ExprIoEofObj* = object
    substream1*: ExprIoEof_OneOrTwo
    substream2*: ExprIoEof_OneOrTwo
    io*: KaitaiStream
    root*: ExprIoEof
    parent*: ref RootObj
    rawSubstream1*: string
    rawSubstream2*: string

### ExprIoEof_OneOrTwo ###
proc read*(_: typedesc[ExprIoEof_OneOrTwo], io: KaitaiStream, root: ExprIoEof, parent: ExprIoEof): ExprIoEof_OneOrTwo =
  result = new(ExprIoEof_OneOrTwo)
  let root = if root == nil: cast[ExprIoEof](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = io.readU4le()
  result.one = one
  if not(stream.isEof):
    let two = io.readU4le()
    result.two = two

proc fromFile*(_: typedesc[ExprIoEof_OneOrTwo], filename: string): ExprIoEof_OneOrTwo =
  ExprIoEof_OneOrTwo.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoEof_OneOrTwoObj) =
  close(x.io)

### ExprIoEof ###
proc read*(_: typedesc[ExprIoEof], io: KaitaiStream, root: ExprIoEof, parent: ref RootObj): ExprIoEof =
  result = new(ExprIoEof)
  let root = if root == nil: cast[ExprIoEof](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let rawSubstream1 = io.readBytes(int(4))
  result.rawSubstream1 = rawSubstream1
  let rawSubstream1Io = newKaitaiStringStream(rawSubstream1)
  let substream1 = ExprIoEof_OneOrTwo.read(rawSubstream1Io, result, root)
  result.substream1 = substream1
  let rawSubstream2 = io.readBytes(int(8))
  result.rawSubstream2 = rawSubstream2
  let rawSubstream2Io = newKaitaiStringStream(rawSubstream2)
  let substream2 = ExprIoEof_OneOrTwo.read(rawSubstream2Io, result, root)
  result.substream2 = substream2

proc fromFile*(_: typedesc[ExprIoEof], filename: string): ExprIoEof =
  ExprIoEof.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoEofObj) =
  close(x.io)

