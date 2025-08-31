import kaitai_struct_nim_runtime
import options

type
  TermStrz4* = ref object of KaitaiStruct
    `s1`*: TermStrz4_S1Type
    `skipTerm1`*: uint8
    `s2`*: TermStrz4_S2Type
    `skipTerm2`*: uint8
    `s3`*: TermStrz4_S3Type
    `parent`*: KaitaiStruct
    `rawS1`*: seq[byte]
    `rawS2`*: seq[byte]
    `rawS3`*: seq[byte]
  TermStrz4_S1Type* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: TermStrz4
  TermStrz4_S2Type* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: TermStrz4
  TermStrz4_S3Type* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: TermStrz4

proc read*(_: typedesc[TermStrz4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStrz4
proc read*(_: typedesc[TermStrz4_S1Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStrz4): TermStrz4_S1Type
proc read*(_: typedesc[TermStrz4_S2Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStrz4): TermStrz4_S2Type
proc read*(_: typedesc[TermStrz4_S3Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStrz4): TermStrz4_S3Type


proc read*(_: typedesc[TermStrz4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStrz4 =
  template this: untyped = result
  this = new(TermStrz4)
  let root = if root == nil: cast[TermStrz4](this) else: cast[TermStrz4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawS1Expr = this.io.readBytes(int(3))
  this.rawS1 = rawS1Expr
  let rawS1Io = newKaitaiStream(rawS1Expr)
  let s1Expr = TermStrz4_S1Type.read(rawS1Io, this.root, this)
  this.s1 = s1Expr
  let skipTerm1Expr = this.io.readU1()
  this.skipTerm1 = skipTerm1Expr
  let rawS2Expr = this.io.readBytes(int(3))
  this.rawS2 = rawS2Expr
  let rawS2Io = newKaitaiStream(rawS2Expr)
  let s2Expr = TermStrz4_S2Type.read(rawS2Io, this.root, this)
  this.s2 = s2Expr
  let skipTerm2Expr = this.io.readU1()
  this.skipTerm2 = skipTerm2Expr
  let rawS3Expr = this.io.readBytes(int(3))
  this.rawS3 = rawS3Expr
  let rawS3Io = newKaitaiStream(rawS3Expr)
  let s3Expr = TermStrz4_S3Type.read(rawS3Io, this.root, this)
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermStrz4], filename: string): TermStrz4 =
  TermStrz4.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStrz4_S1Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStrz4): TermStrz4_S1Type =
  template this: untyped = result
  this = new(TermStrz4_S1Type)
  let root = if root == nil: cast[TermStrz4](this) else: cast[TermStrz4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTerm(124, false, true, false), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStrz4_S1Type], filename: string): TermStrz4_S1Type =
  TermStrz4_S1Type.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStrz4_S2Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStrz4): TermStrz4_S2Type =
  template this: untyped = result
  this = new(TermStrz4_S2Type)
  let root = if root == nil: cast[TermStrz4](this) else: cast[TermStrz4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTerm(124, false, false, false), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStrz4_S2Type], filename: string): TermStrz4_S2Type =
  TermStrz4_S2Type.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStrz4_S3Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStrz4): TermStrz4_S3Type =
  template this: untyped = result
  this = new(TermStrz4_S3Type)
  let root = if root == nil: cast[TermStrz4](this) else: cast[TermStrz4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTerm(64, true, true, false), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStrz4_S3Type], filename: string): TermStrz4_S3Type =
  TermStrz4_S3Type.read(newKaitaiFileStream(filename), nil, nil)

