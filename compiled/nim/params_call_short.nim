import kaitai_struct_nim_runtime
import options

type
  ParamsCallShort* = ref object of KaitaiStruct
    buf1*: ParamsCallShort_MyStr1
    buf2*: ParamsCallShort_MyStr2
    parent*: KaitaiStruct
  ParamsCallShort_MyStr1* = ref object of KaitaiStruct
    body*: string
    len*: uint32
    parent*: ParamsCallShort
  ParamsCallShort_MyStr2* = ref object of KaitaiStruct
    body*: string
    trailer*: uint8
    len*: uint32
    hasTrailer*: bool
    parent*: ParamsCallShort

proc read*(_: typedesc[ParamsCallShort], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsCallShort
proc read*(_: typedesc[ParamsCallShort_MyStr1], io: KaitaiStream, root: KaitaiStruct, parent: ParamsCallShort, len: any): ParamsCallShort_MyStr1
proc read*(_: typedesc[ParamsCallShort_MyStr2], io: KaitaiStream, root: KaitaiStruct, parent: ParamsCallShort, len: any, hasTrailer: any): ParamsCallShort_MyStr2


proc read*(_: typedesc[ParamsCallShort], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsCallShort =
  template this: untyped = result
  this = new(ParamsCallShort)
  let root = if root == nil: cast[ParamsCallShort](this) else: cast[ParamsCallShort](root)
  this.io = io
  this.root = root
  this.parent = parent

  let buf1Expr = ParamsCallShort_MyStr1.read(this.io, this.root, this, 5)
  this.buf1 = buf1Expr
  let buf2Expr = ParamsCallShort_MyStr2.read(this.io, this.root, this, (2 + 3), true)
  this.buf2 = buf2Expr

proc fromFile*(_: typedesc[ParamsCallShort], filename: string): ParamsCallShort =
  ParamsCallShort.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsCallShort_MyStr1], io: KaitaiStream, root: KaitaiStruct, parent: ParamsCallShort, len: any): ParamsCallShort_MyStr1 =
  template this: untyped = result
  this = new(ParamsCallShort_MyStr1)
  let root = if root == nil: cast[ParamsCallShort](this) else: cast[ParamsCallShort](root)
  this.io = io
  this.root = root
  this.parent = parent
  let lenExpr = uint32(len)
  this.len = lenExpr

  let bodyExpr = encode(this.io.readBytes(int(this.len)), "UTF-8")
  this.body = bodyExpr

proc fromFile*(_: typedesc[ParamsCallShort_MyStr1], filename: string): ParamsCallShort_MyStr1 =
  ParamsCallShort_MyStr1.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsCallShort_MyStr2], io: KaitaiStream, root: KaitaiStruct, parent: ParamsCallShort, len: any, hasTrailer: any): ParamsCallShort_MyStr2 =
  template this: untyped = result
  this = new(ParamsCallShort_MyStr2)
  let root = if root == nil: cast[ParamsCallShort](this) else: cast[ParamsCallShort](root)
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

proc fromFile*(_: typedesc[ParamsCallShort_MyStr2], filename: string): ParamsCallShort_MyStr2 =
  ParamsCallShort_MyStr2.read(newKaitaiFileStream(filename), nil, nil)

