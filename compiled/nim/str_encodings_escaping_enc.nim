import kaitai_struct_nim_runtime
import options

type
  StrEncodingsEscapingEnc* = ref object of KaitaiStruct
    `lenOf1`*: uint16
    `str1`*: StrEncodingsEscapingEnc_Str1Wrapper
    `lenOf2`*: uint16
    `str2`*: StrEncodingsEscapingEnc_Str2Wrapper
    `lenOf3`*: uint16
    `str3`*: StrEncodingsEscapingEnc_Str3Wrapper
    `lenOf4`*: uint16
    `str4`*: StrEncodingsEscapingEnc_Str4Wrapper
    `parent`*: KaitaiStruct
    `rawStr1`*: seq[byte]
    `rawStr2`*: seq[byte]
    `rawStr3`*: seq[byte]
    `rawStr4`*: seq[byte]
  StrEncodingsEscapingEnc_Str1Wrapper* = ref object of KaitaiStruct
    `parent`*: StrEncodingsEscapingEnc
    `vInst`: string
    `vInstFlag`: bool
  StrEncodingsEscapingEnc_Str2Wrapper* = ref object of KaitaiStruct
    `parent`*: StrEncodingsEscapingEnc
    `vInst`: string
    `vInstFlag`: bool
  StrEncodingsEscapingEnc_Str3Wrapper* = ref object of KaitaiStruct
    `parent`*: StrEncodingsEscapingEnc
    `vInst`: string
    `vInstFlag`: bool
  StrEncodingsEscapingEnc_Str4Wrapper* = ref object of KaitaiStruct
    `parent`*: StrEncodingsEscapingEnc
    `vInst`: string
    `vInstFlag`: bool

proc read*(_: typedesc[StrEncodingsEscapingEnc], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEncodingsEscapingEnc
proc read*(_: typedesc[StrEncodingsEscapingEnc_Str1Wrapper], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsEscapingEnc): StrEncodingsEscapingEnc_Str1Wrapper
proc read*(_: typedesc[StrEncodingsEscapingEnc_Str2Wrapper], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsEscapingEnc): StrEncodingsEscapingEnc_Str2Wrapper
proc read*(_: typedesc[StrEncodingsEscapingEnc_Str3Wrapper], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsEscapingEnc): StrEncodingsEscapingEnc_Str3Wrapper
proc read*(_: typedesc[StrEncodingsEscapingEnc_Str4Wrapper], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsEscapingEnc): StrEncodingsEscapingEnc_Str4Wrapper

proc v*(this: StrEncodingsEscapingEnc_Str1Wrapper): string
proc v*(this: StrEncodingsEscapingEnc_Str2Wrapper): string
proc v*(this: StrEncodingsEscapingEnc_Str3Wrapper): string
proc v*(this: StrEncodingsEscapingEnc_Str4Wrapper): string

proc read*(_: typedesc[StrEncodingsEscapingEnc], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEncodingsEscapingEnc =
  template this: untyped = result
  this = new(StrEncodingsEscapingEnc)
  let root = if root == nil: cast[StrEncodingsEscapingEnc](this) else: cast[StrEncodingsEscapingEnc](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenOf1Expr = this.io.readU2le()
  this.lenOf1 = lenOf1Expr
  let rawStr1Expr = this.io.readBytes(int(this.lenOf1))
  this.rawStr1 = rawStr1Expr
  let rawStr1Io = newKaitaiStream(rawStr1Expr)
  let str1Expr = StrEncodingsEscapingEnc_Str1Wrapper.read(rawStr1Io, this.root, this)
  this.str1 = str1Expr
  let lenOf2Expr = this.io.readU2le()
  this.lenOf2 = lenOf2Expr
  let rawStr2Expr = this.io.readBytes(int(this.lenOf2))
  this.rawStr2 = rawStr2Expr
  let rawStr2Io = newKaitaiStream(rawStr2Expr)
  let str2Expr = StrEncodingsEscapingEnc_Str2Wrapper.read(rawStr2Io, this.root, this)
  this.str2 = str2Expr
  let lenOf3Expr = this.io.readU2le()
  this.lenOf3 = lenOf3Expr
  let rawStr3Expr = this.io.readBytes(int(this.lenOf3))
  this.rawStr3 = rawStr3Expr
  let rawStr3Io = newKaitaiStream(rawStr3Expr)
  let str3Expr = StrEncodingsEscapingEnc_Str3Wrapper.read(rawStr3Io, this.root, this)
  this.str3 = str3Expr
  let lenOf4Expr = this.io.readU2le()
  this.lenOf4 = lenOf4Expr
  let rawStr4Expr = this.io.readBytes(int(this.lenOf4))
  this.rawStr4 = rawStr4Expr
  let rawStr4Io = newKaitaiStream(rawStr4Expr)
  let str4Expr = StrEncodingsEscapingEnc_Str4Wrapper.read(rawStr4Io, this.root, this)
  this.str4 = str4Expr

proc fromFile*(_: typedesc[StrEncodingsEscapingEnc], filename: string): StrEncodingsEscapingEnc =
  StrEncodingsEscapingEnc.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEncodingsEscapingEnc_Str1Wrapper], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsEscapingEnc): StrEncodingsEscapingEnc_Str1Wrapper =
  template this: untyped = result
  this = new(StrEncodingsEscapingEnc_Str1Wrapper)
  let root = if root == nil: cast[StrEncodingsEscapingEnc](this) else: cast[StrEncodingsEscapingEnc](root)
  this.io = io
  this.root = root
  this.parent = parent


proc v(this: StrEncodingsEscapingEnc_Str1Wrapper): string = 
  if this.vInstFlag:
    return this.vInst
  let pos = this.io.pos()
  this.io.seek(int(0))
  let vInstExpr = encode(this.io.readBytesFull(), "ASCII\\x")
  this.vInst = vInstExpr
  this.io.seek(pos)
  this.vInstFlag = true
  return this.vInst

proc fromFile*(_: typedesc[StrEncodingsEscapingEnc_Str1Wrapper], filename: string): StrEncodingsEscapingEnc_Str1Wrapper =
  StrEncodingsEscapingEnc_Str1Wrapper.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEncodingsEscapingEnc_Str2Wrapper], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsEscapingEnc): StrEncodingsEscapingEnc_Str2Wrapper =
  template this: untyped = result
  this = new(StrEncodingsEscapingEnc_Str2Wrapper)
  let root = if root == nil: cast[StrEncodingsEscapingEnc](this) else: cast[StrEncodingsEscapingEnc](root)
  this.io = io
  this.root = root
  this.parent = parent


proc v(this: StrEncodingsEscapingEnc_Str2Wrapper): string = 
  if this.vInstFlag:
    return this.vInst
  let pos = this.io.pos()
  this.io.seek(int(0))
  let vInstExpr = encode(this.io.readBytesFull(), "UTF-8\'x")
  this.vInst = vInstExpr
  this.io.seek(pos)
  this.vInstFlag = true
  return this.vInst

proc fromFile*(_: typedesc[StrEncodingsEscapingEnc_Str2Wrapper], filename: string): StrEncodingsEscapingEnc_Str2Wrapper =
  StrEncodingsEscapingEnc_Str2Wrapper.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEncodingsEscapingEnc_Str3Wrapper], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsEscapingEnc): StrEncodingsEscapingEnc_Str3Wrapper =
  template this: untyped = result
  this = new(StrEncodingsEscapingEnc_Str3Wrapper)
  let root = if root == nil: cast[StrEncodingsEscapingEnc](this) else: cast[StrEncodingsEscapingEnc](root)
  this.io = io
  this.root = root
  this.parent = parent


proc v(this: StrEncodingsEscapingEnc_Str3Wrapper): string = 
  if this.vInstFlag:
    return this.vInst
  let pos = this.io.pos()
  this.io.seek(int(0))
  let vInstExpr = encode(this.io.readBytesFull(), "SJIS\"x")
  this.vInst = vInstExpr
  this.io.seek(pos)
  this.vInstFlag = true
  return this.vInst

proc fromFile*(_: typedesc[StrEncodingsEscapingEnc_Str3Wrapper], filename: string): StrEncodingsEscapingEnc_Str3Wrapper =
  StrEncodingsEscapingEnc_Str3Wrapper.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEncodingsEscapingEnc_Str4Wrapper], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsEscapingEnc): StrEncodingsEscapingEnc_Str4Wrapper =
  template this: untyped = result
  this = new(StrEncodingsEscapingEnc_Str4Wrapper)
  let root = if root == nil: cast[StrEncodingsEscapingEnc](this) else: cast[StrEncodingsEscapingEnc](root)
  this.io = io
  this.root = root
  this.parent = parent


proc v(this: StrEncodingsEscapingEnc_Str4Wrapper): string = 
  if this.vInstFlag:
    return this.vInst
  let pos = this.io.pos()
  this.io.seek(int(0))
  let vInstExpr = encode(this.io.readBytesFull(), "IBM437\nx")
  this.vInst = vInstExpr
  this.io.seek(pos)
  this.vInstFlag = true
  return this.vInst

proc fromFile*(_: typedesc[StrEncodingsEscapingEnc_Str4Wrapper], filename: string): StrEncodingsEscapingEnc_Str4Wrapper =
  StrEncodingsEscapingEnc_Str4Wrapper.read(newKaitaiFileStream(filename), nil, nil)

