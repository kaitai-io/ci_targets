import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprIoPos* = ref object of KaitaiStruct
    substream1*: ExprIoPos_AllPlusNumber
    substream2*: ExprIoPos_AllPlusNumber
    parent*: KaitaiStruct
    rawSubstream1*: string
    rawSubstream2*: string
  ExprIoPos_AllPlusNumber* = ref object of KaitaiStruct
    myStr*: string
    body*: string
    number*: uint16
    parent*: ExprIoPos

proc read*(_: typedesc[ExprIoPos], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoPos
proc read*(_: typedesc[ExprIoPos_AllPlusNumber], io: KaitaiStream, root: KaitaiStruct, parent: ExprIoPos): ExprIoPos_AllPlusNumber


proc read*(_: typedesc[ExprIoPos], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoPos =
  template this: untyped = result
  this = new(ExprIoPos)
  let root = if root == nil: cast[ExprIoPos](this) else: cast[ExprIoPos](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.rawSubstream1 = this.io.readBytes(int(16))
  let rawSubstream1Io = newKaitaiStringStream(this.rawSubstream1)
  this.substream1 = ExprIoPos_AllPlusNumber.read(rawSubstream1Io, this.root, this)
  this.rawSubstream2 = this.io.readBytes(int(14))
  let rawSubstream2Io = newKaitaiStringStream(this.rawSubstream2)
  this.substream2 = ExprIoPos_AllPlusNumber.read(rawSubstream2Io, this.root, this)

proc fromFile*(_: typedesc[ExprIoPos], filename: string): ExprIoPos =
  ExprIoPos.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprIoPos_AllPlusNumber], io: KaitaiStream, root: KaitaiStruct, parent: ExprIoPos): ExprIoPos_AllPlusNumber =
  template this: untyped = result
  this = new(ExprIoPos_AllPlusNumber)
  let root = if root == nil: cast[ExprIoPos](this) else: cast[ExprIoPos](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.myStr = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  this.body = this.io.readBytes(int(((this.io.size - this.io.pos) - 2)))
  this.number = this.io.readU2le()

proc fromFile*(_: typedesc[ExprIoPos_AllPlusNumber], filename: string): ExprIoPos_AllPlusNumber =
  ExprIoPos_AllPlusNumber.read(newKaitaiFileStream(filename), nil, nil)

