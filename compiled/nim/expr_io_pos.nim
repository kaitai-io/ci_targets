import kaitai_struct_nim_runtime
import encodings

type
  ExprIoPos_AllPlusNumber* = ref ExprIoPos_AllPlusNumberObj
  ExprIoPos_AllPlusNumberObj* = object
    myStr*: string
    body*: string
    number*: uint16
    io*: KaitaiStream
    root*: ExprIoPos
    parent*: ExprIoPos
  ExprIoPos* = ref ExprIoPosObj
  ExprIoPosObj* = object
    substream1*: ExprIoPos_AllPlusNumber
    substream2*: ExprIoPos_AllPlusNumber
    io*: KaitaiStream
    root*: ExprIoPos
    parent*: ref RootObj
    rawSubstream1*: string
    rawSubstream2*: string

### ExprIoPos_AllPlusNumber ###
proc read*(_: typedesc[ExprIoPos_AllPlusNumber], io: KaitaiStream, root: ExprIoPos, parent: ExprIoPos): ExprIoPos_AllPlusNumber =
  result = new(ExprIoPos_AllPlusNumber)
  let root = if root == nil: cast[ExprIoPos](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let myStr = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  result.myStr = myStr
  let body = io.readBytes(int(((stream.size - stream.pos) - 2)))
  result.body = body
  let number = io.readU2le()
  result.number = number

proc fromFile*(_: typedesc[ExprIoPos_AllPlusNumber], filename: string): ExprIoPos_AllPlusNumber =
  ExprIoPos_AllPlusNumber.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoPos_AllPlusNumberObj) =
  close(x.io)

### ExprIoPos ###
proc read*(_: typedesc[ExprIoPos], io: KaitaiStream, root: ExprIoPos, parent: ref RootObj): ExprIoPos =
  result = new(ExprIoPos)
  let root = if root == nil: cast[ExprIoPos](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let rawSubstream1 = io.readBytes(int(16))
  result.rawSubstream1 = rawSubstream1
  let rawSubstream1Io = newKaitaiStringStream(rawSubstream1)
  let substream1 = ExprIoPos_AllPlusNumber.read(rawSubstream1Io, result, root)
  result.substream1 = substream1
  let rawSubstream2 = io.readBytes(int(14))
  result.rawSubstream2 = rawSubstream2
  let rawSubstream2Io = newKaitaiStringStream(rawSubstream2)
  let substream2 = ExprIoPos_AllPlusNumber.read(rawSubstream2Io, result, root)
  result.substream2 = substream2

proc fromFile*(_: typedesc[ExprIoPos], filename: string): ExprIoPos =
  ExprIoPos.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoPosObj) =
  close(x.io)

