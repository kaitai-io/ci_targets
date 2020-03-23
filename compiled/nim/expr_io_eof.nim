import kaitai_struct_nim_runtime

type
  ExprIoEofoneOrTwo* = ref ExprIoEofoneOrTwoObj
  ExprIoEofoneOrTwoObj* = object
    substream1*: OneOrTwo
    substream2*: OneOrTwo
    io*: KaitaiStream
    root*: ExprIoEof
    parent*: ref RootObj
    rawSubstream1*: string
    rawSubstream2*: string
  ExprIoEof* = ref ExprIoEofObj
  ExprIoEofObj* = object
    substream1*: OneOrTwo
    substream2*: OneOrTwo
    io*: KaitaiStream
    root*: ExprIoEof
    parent*: ref RootObj
    rawSubstream1*: string
    rawSubstream2*: string

### ExprIoEofoneOrTwo ###
proc read*(_: typedesc[ExprIoEofoneOrTwo], io: KaitaiStream, root: ExprIoEof, parent: ExprIoEof): ExprIoEofoneOrTwo =
  result = new(ExprIoEofoneOrTwo)
  let root = if root == nil: cast[ExprIoEof](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = result.io.readU4le()
  if not(stream.isEof):
    result.two = result.io.readU4le()

proc fromFile*(_: typedesc[ExprIoEofoneOrTwo], filename: string): ExprIoEofoneOrTwo =
  ExprIoEofoneOrTwo.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoEofoneOrTwoObj) =
  close(x.io)

### ExprIoEof ###
proc read*(_: typedesc[ExprIoEof], io: KaitaiStream, root: ExprIoEof, parent: ref RootObj): ExprIoEof =
  result = new(ExprIoEof)
  let root = if root == nil: cast[ExprIoEof](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rawSubstream1 = result.io.readBytes(4)
  rawSubstream1Io = newKaitaiStringStream(rawSubstream1)
  result.substream1 = OneOrTwo.read(rawSubstream1Io, result, root)
  result.rawSubstream2 = result.io.readBytes(8)
  rawSubstream2Io = newKaitaiStringStream(rawSubstream2)
  result.substream2 = OneOrTwo.read(rawSubstream2Io, result, root)

proc fromFile*(_: typedesc[ExprIoEof], filename: string): ExprIoEof =
  ExprIoEof.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoEofObj) =
  close(x.io)

