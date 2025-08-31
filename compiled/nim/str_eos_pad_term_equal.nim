import kaitai_struct_nim_runtime
import options

type
  StrEosPadTermEqual* = ref object of KaitaiStruct
    `s1`*: StrEosPadTermEqual_S1Type
    `s2`*: StrEosPadTermEqual_S2Type
    `s3`*: StrEosPadTermEqual_S3Type
    `s4`*: StrEosPadTermEqual_S4Type
    `parent`*: KaitaiStruct
    `rawS1`*: seq[byte]
    `rawS2`*: seq[byte]
    `rawS3`*: seq[byte]
    `rawS4`*: seq[byte]
  StrEosPadTermEqual_S1Type* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: StrEosPadTermEqual
  StrEosPadTermEqual_S2Type* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: StrEosPadTermEqual
  StrEosPadTermEqual_S3Type* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: StrEosPadTermEqual
  StrEosPadTermEqual_S4Type* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: StrEosPadTermEqual

proc read*(_: typedesc[StrEosPadTermEqual], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEosPadTermEqual
proc read*(_: typedesc[StrEosPadTermEqual_S1Type], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEqual): StrEosPadTermEqual_S1Type
proc read*(_: typedesc[StrEosPadTermEqual_S2Type], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEqual): StrEosPadTermEqual_S2Type
proc read*(_: typedesc[StrEosPadTermEqual_S3Type], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEqual): StrEosPadTermEqual_S3Type
proc read*(_: typedesc[StrEosPadTermEqual_S4Type], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEqual): StrEosPadTermEqual_S4Type


proc read*(_: typedesc[StrEosPadTermEqual], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEosPadTermEqual =
  template this: untyped = result
  this = new(StrEosPadTermEqual)
  let root = if root == nil: cast[StrEosPadTermEqual](this) else: cast[StrEosPadTermEqual](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawS1Expr = this.io.readBytes(int(20))
  this.rawS1 = rawS1Expr
  let rawS1Io = newKaitaiStream(rawS1Expr)
  let s1Expr = StrEosPadTermEqual_S1Type.read(rawS1Io, this.root, this)
  this.s1 = s1Expr
  let rawS2Expr = this.io.readBytes(int(20))
  this.rawS2 = rawS2Expr
  let rawS2Io = newKaitaiStream(rawS2Expr)
  let s2Expr = StrEosPadTermEqual_S2Type.read(rawS2Io, this.root, this)
  this.s2 = s2Expr
  let rawS3Expr = this.io.readBytes(int(20))
  this.rawS3 = rawS3Expr
  let rawS3Io = newKaitaiStream(rawS3Expr)
  let s3Expr = StrEosPadTermEqual_S3Type.read(rawS3Io, this.root, this)
  this.s3 = s3Expr
  let rawS4Expr = this.io.readBytes(int(20))
  this.rawS4 = rawS4Expr
  let rawS4Io = newKaitaiStream(rawS4Expr)
  let s4Expr = StrEosPadTermEqual_S4Type.read(rawS4Io, this.root, this)
  this.s4 = s4Expr

proc fromFile*(_: typedesc[StrEosPadTermEqual], filename: string): StrEosPadTermEqual =
  StrEosPadTermEqual.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEosPadTermEqual_S1Type], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEqual): StrEosPadTermEqual_S1Type =
  template this: untyped = result
  this = new(StrEosPadTermEqual_S1Type)
  let root = if root == nil: cast[StrEosPadTermEqual](this) else: cast[StrEosPadTermEqual](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesFull().bytesStripRight(64).bytesTerminate(64, false), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[StrEosPadTermEqual_S1Type], filename: string): StrEosPadTermEqual_S1Type =
  StrEosPadTermEqual_S1Type.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEosPadTermEqual_S2Type], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEqual): StrEosPadTermEqual_S2Type =
  template this: untyped = result
  this = new(StrEosPadTermEqual_S2Type)
  let root = if root == nil: cast[StrEosPadTermEqual](this) else: cast[StrEosPadTermEqual](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesFull().bytesStripRight(43).bytesTerminate(64, true), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[StrEosPadTermEqual_S2Type], filename: string): StrEosPadTermEqual_S2Type =
  StrEosPadTermEqual_S2Type.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEosPadTermEqual_S3Type], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEqual): StrEosPadTermEqual_S3Type =
  template this: untyped = result
  this = new(StrEosPadTermEqual_S3Type)
  let root = if root == nil: cast[StrEosPadTermEqual](this) else: cast[StrEosPadTermEqual](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesFull().bytesStripRight(43).bytesTerminate(43, false), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[StrEosPadTermEqual_S3Type], filename: string): StrEosPadTermEqual_S3Type =
  StrEosPadTermEqual_S3Type.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEosPadTermEqual_S4Type], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEqual): StrEosPadTermEqual_S4Type =
  template this: untyped = result
  this = new(StrEosPadTermEqual_S4Type)
  let root = if root == nil: cast[StrEosPadTermEqual](this) else: cast[StrEosPadTermEqual](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesFull().bytesStripRight(46).bytesTerminate(46, true), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[StrEosPadTermEqual_S4Type], filename: string): StrEosPadTermEqual_S4Type =
  StrEosPadTermEqual_S4Type.read(newKaitaiFileStream(filename), nil, nil)

