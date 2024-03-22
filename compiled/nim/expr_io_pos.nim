import kaitai_struct_nim_runtime
import options

type
  ExprIoPos* = ref object of KaitaiStruct
    `substream1`*: ExprIoPos_AllPlusNumber
    `substream2`*: ExprIoPos_AllPlusNumber
    `parent`*: KaitaiStruct
    `rawSubstream1`*: seq[byte]
    `rawSubstream2`*: seq[byte]
  ExprIoPos_AllPlusNumber* = ref object of KaitaiStruct
    `myStr`*: string
    `body`*: seq[byte]
    `number`*: uint16
    `parent`*: ExprIoPos

proc read*(_: typedesc[ExprIoPos], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoPos
proc read*(_: typedesc[ExprIoPos_AllPlusNumber], io: KaitaiStream, root: KaitaiStruct, parent: ExprIoPos): ExprIoPos_AllPlusNumber


proc read*(_: typedesc[ExprIoPos], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoPos =
  template this: untyped = result
  this = new(ExprIoPos)
  let root = if root == nil: cast[ExprIoPos](this) else: cast[ExprIoPos](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawSubstream1Expr = this.io.readBytes(int(16))
  this.rawSubstream1 = rawSubstream1Expr
  let rawSubstream1Io = newKaitaiStream(rawSubstream1Expr)
  let substream1Expr = ExprIoPos_AllPlusNumber.read(rawSubstream1Io, this.root, this)
  this.substream1 = substream1Expr
  let rawSubstream2Expr = this.io.readBytes(int(14))
  this.rawSubstream2 = rawSubstream2Expr
  let rawSubstream2Io = newKaitaiStream(rawSubstream2Expr)
  let substream2Expr = ExprIoPos_AllPlusNumber.read(rawSubstream2Io, this.root, this)
  this.substream2 = substream2Expr

proc fromFile*(_: typedesc[ExprIoPos], filename: string): ExprIoPos =
  ExprIoPos.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprIoPos_AllPlusNumber], io: KaitaiStream, root: KaitaiStruct, parent: ExprIoPos): ExprIoPos_AllPlusNumber =
  template this: untyped = result
  this = new(ExprIoPos_AllPlusNumber)
  let root = if root == nil: cast[ExprIoPos](this) else: cast[ExprIoPos](root)
  this.io = io
  this.root = root
  this.parent = parent

  let myStrExpr = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
  this.myStr = myStrExpr
  let bodyExpr = this.io.readBytes(int((this.io.size - this.io.pos) - 2))
  this.body = bodyExpr
  let numberExpr = this.io.readU2le()
  this.number = numberExpr

proc fromFile*(_: typedesc[ExprIoPos_AllPlusNumber], filename: string): ExprIoPos_AllPlusNumber =
  ExprIoPos_AllPlusNumber.read(newKaitaiFileStream(filename), nil, nil)

