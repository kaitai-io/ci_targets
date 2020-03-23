import kaitai_struct_nim_runtime
import encodings

type
  ExprIoPosallPlusNumber* = ref ExprIoPosallPlusNumberObj
  ExprIoPosallPlusNumberObj* = object
    substream1*: AllPlusNumber
    substream2*: AllPlusNumber
    io*: KaitaiStream
    root*: ExprIoPos
    parent*: ref RootObj
    rawSubstream1*: string
    rawSubstream2*: string
  ExprIoPos* = ref ExprIoPosObj
  ExprIoPosObj* = object
    substream1*: AllPlusNumber
    substream2*: AllPlusNumber
    io*: KaitaiStream
    root*: ExprIoPos
    parent*: ref RootObj
    rawSubstream1*: string
    rawSubstream2*: string

### ExprIoPosallPlusNumber ###
proc read*(_: typedesc[ExprIoPosallPlusNumber], io: KaitaiStream, root: ExprIoPos, parent: ExprIoPos): ExprIoPosallPlusNumber =
  result = new(ExprIoPosallPlusNumber)
  let root = if root == nil: cast[ExprIoPos](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.myStr = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  result.body = result.io.readBytes(((stream.size - stream.pos) - 2))
  result.number = result.io.readU2le()

proc fromFile*(_: typedesc[ExprIoPosallPlusNumber], filename: string): ExprIoPosallPlusNumber =
  ExprIoPosallPlusNumber.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoPosallPlusNumberObj) =
  close(x.io)

### ExprIoPos ###
proc read*(_: typedesc[ExprIoPos], io: KaitaiStream, root: ExprIoPos, parent: ref RootObj): ExprIoPos =
  result = new(ExprIoPos)
  let root = if root == nil: cast[ExprIoPos](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rawSubstream1 = result.io.readBytes(16)
  rawSubstream1Io = newKaitaiStringStream(rawSubstream1)
  result.substream1 = AllPlusNumber.read(rawSubstream1Io, result, root)
  result.rawSubstream2 = result.io.readBytes(14)
  rawSubstream2Io = newKaitaiStringStream(rawSubstream2)
  result.substream2 = AllPlusNumber.read(rawSubstream2Io, result, root)

proc fromFile*(_: typedesc[ExprIoPos], filename: string): ExprIoPos =
  ExprIoPos.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoPosObj) =
  close(x.io)

