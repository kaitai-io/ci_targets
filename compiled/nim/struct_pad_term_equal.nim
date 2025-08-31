import kaitai_struct_nim_runtime
import options

type
  StructPadTermEqual* = ref object of KaitaiStruct
    `s1`*: StructPadTermEqual_BytesWrapper
    `s2`*: StructPadTermEqual_BytesWrapper
    `s3`*: StructPadTermEqual_BytesWrapper
    `s4`*: StructPadTermEqual_BytesWrapper
    `parent`*: KaitaiStruct
    `rawS1`*: seq[byte]
    `rawS2`*: seq[byte]
    `rawS3`*: seq[byte]
    `rawS4`*: seq[byte]
  StructPadTermEqual_BytesWrapper* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: StructPadTermEqual

proc read*(_: typedesc[StructPadTermEqual], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StructPadTermEqual
proc read*(_: typedesc[StructPadTermEqual_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: StructPadTermEqual): StructPadTermEqual_BytesWrapper


proc read*(_: typedesc[StructPadTermEqual], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StructPadTermEqual =
  template this: untyped = result
  this = new(StructPadTermEqual)
  let root = if root == nil: cast[StructPadTermEqual](this) else: cast[StructPadTermEqual](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawS1Expr = this.io.readBytes(int(20)).bytesStripRight(64).bytesTerminate(64, false)
  this.rawS1 = rawS1Expr
  let rawS1Io = newKaitaiStream(rawS1Expr)
  let s1Expr = StructPadTermEqual_BytesWrapper.read(rawS1Io, this.root, this)
  this.s1 = s1Expr
  let rawS2Expr = this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, true)
  this.rawS2 = rawS2Expr
  let rawS2Io = newKaitaiStream(rawS2Expr)
  let s2Expr = StructPadTermEqual_BytesWrapper.read(rawS2Io, this.root, this)
  this.s2 = s2Expr
  let rawS3Expr = this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(43, false)
  this.rawS3 = rawS3Expr
  let rawS3Io = newKaitaiStream(rawS3Expr)
  let s3Expr = StructPadTermEqual_BytesWrapper.read(rawS3Io, this.root, this)
  this.s3 = s3Expr
  let rawS4Expr = this.io.readBytes(int(20)).bytesStripRight(46).bytesTerminate(46, true)
  this.rawS4 = rawS4Expr
  let rawS4Io = newKaitaiStream(rawS4Expr)
  let s4Expr = StructPadTermEqual_BytesWrapper.read(rawS4Io, this.root, this)
  this.s4 = s4Expr

proc fromFile*(_: typedesc[StructPadTermEqual], filename: string): StructPadTermEqual =
  StructPadTermEqual.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StructPadTermEqual_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: StructPadTermEqual): StructPadTermEqual_BytesWrapper =
  template this: untyped = result
  this = new(StructPadTermEqual_BytesWrapper)
  let root = if root == nil: cast[StructPadTermEqual](this) else: cast[StructPadTermEqual](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull()
  this.value = valueExpr

proc fromFile*(_: typedesc[StructPadTermEqual_BytesWrapper], filename: string): StructPadTermEqual_BytesWrapper =
  StructPadTermEqual_BytesWrapper.read(newKaitaiFileStream(filename), nil, nil)

