import kaitai_struct_nim_runtime
import options
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
  let this = new(ExprIoPos_AllPlusNumber)
  let root = if root == nil: cast[ExprIoPos](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let myStr = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  this.myStr = myStr
  let body = this.io.readBytes(int(((stream.this.size - stream.this.pos) - 2)))
  this.body = body
  let number = this.io.readU2le()
  this.number = number
  result = this

proc fromFile*(_: typedesc[ExprIoPos_AllPlusNumber], filename: string): ExprIoPos_AllPlusNumber =
  ExprIoPos_AllPlusNumber.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoPos_AllPlusNumberObj) =
  close(x.io)

### ExprIoPos ###
proc read*(_: typedesc[ExprIoPos], io: KaitaiStream, root: ExprIoPos, parent: ref RootObj): ExprIoPos =
  let this = new(ExprIoPos)
  let root = if root == nil: cast[ExprIoPos](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let rawSubstream1 = this.io.readBytes(int(16))
  this.rawSubstream1 = rawSubstream1
  let rawSubstream1Io = newKaitaiStringStream(rawSubstream1)
  let substream1 = ExprIoPos_AllPlusNumber.read(rawSubstream1Io, this.root, this)
  this.substream1 = substream1
  let rawSubstream2 = this.io.readBytes(int(14))
  this.rawSubstream2 = rawSubstream2
  let rawSubstream2Io = newKaitaiStringStream(rawSubstream2)
  let substream2 = ExprIoPos_AllPlusNumber.read(rawSubstream2Io, this.root, this)
  this.substream2 = substream2
  result = this

proc fromFile*(_: typedesc[ExprIoPos], filename: string): ExprIoPos =
  ExprIoPos.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoPosObj) =
  close(x.io)

