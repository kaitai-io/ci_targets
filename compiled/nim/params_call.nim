import kaitai_struct_nim_runtime
import options

type
  ParamsCall* = ref object of KaitaiStruct
    `buf1`*: ParamsCall_MyStr1
    `buf2`*: ParamsCall_MyStr2
    `parent`*: KaitaiStruct
  ParamsCall_MyStr1* = ref object of KaitaiStruct
    `body`*: string
    `len`*: uint32
    `parent`*: ParamsCall
  ParamsCall_MyStr2* = ref object of KaitaiStruct
    `body`*: string
    `trailer`*: uint8
    `len`*: uint32
    `hasTrailer`*: bool
    `parent`*: ParamsCall

proc read*(_: typedesc[ParamsCall], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsCall
proc read*(_: typedesc[ParamsCall_MyStr1], io: KaitaiStream, root: KaitaiStruct, parent: ParamsCall, len: any): ParamsCall_MyStr1
proc read*(_: typedesc[ParamsCall_MyStr2], io: KaitaiStream, root: KaitaiStruct, parent: ParamsCall, len: any, hasTrailer: any): ParamsCall_MyStr2


proc read*(_: typedesc[ParamsCall], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsCall =
  template this: untyped = result
  this = new(ParamsCall)
  let root = if root == nil: cast[ParamsCall](this) else: cast[ParamsCall](root)
  this.io = io
  this.root = root
  this.parent = parent

  let buf1Expr = ParamsCall_MyStr1.read(this.io, this.root, this, 5)
  this.buf1 = buf1Expr
  let buf2Expr = ParamsCall_MyStr2.read(this.io, this.root, this, (2 + 3), true)
  this.buf2 = buf2Expr

proc fromFile*(_: typedesc[ParamsCall], filename: string): ParamsCall =
  ParamsCall.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsCall_MyStr1], io: KaitaiStream, root: KaitaiStruct, parent: ParamsCall, len: any): ParamsCall_MyStr1 =
  template this: untyped = result
  this = new(ParamsCall_MyStr1)
  let root = if root == nil: cast[ParamsCall](this) else: cast[ParamsCall](root)
  this.io = io
  this.root = root
  this.parent = parent
  let lenExpr = uint32(len)
  this.len = lenExpr

  let bodyExpr = encode(this.io.readBytes(int(this.len)), "UTF-8")
  this.body = bodyExpr

proc fromFile*(_: typedesc[ParamsCall_MyStr1], filename: string): ParamsCall_MyStr1 =
  ParamsCall_MyStr1.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsCall_MyStr2], io: KaitaiStream, root: KaitaiStruct, parent: ParamsCall, len: any, hasTrailer: any): ParamsCall_MyStr2 =
  template this: untyped = result
  this = new(ParamsCall_MyStr2)
  let root = if root == nil: cast[ParamsCall](this) else: cast[ParamsCall](root)
  this.io = io
  this.root = root
  this.parent = parent
  let lenExpr = uint32(len)
  this.len = lenExpr
  let hasTrailerExpr = bool(hasTrailer)
  this.hasTrailer = hasTrailerExpr

  let bodyExpr = encode(this.io.readBytes(int(this.len)), "UTF-8")
  this.body = bodyExpr
  if this.hasTrailer:
    let trailerExpr = this.io.readU1()
    this.trailer = trailerExpr

proc fromFile*(_: typedesc[ParamsCall_MyStr2], filename: string): ParamsCall_MyStr2 =
  ParamsCall_MyStr2.read(newKaitaiFileStream(filename), nil, nil)

