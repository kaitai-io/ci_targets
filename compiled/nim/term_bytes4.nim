import kaitai_struct_nim_runtime
import options

type
  TermBytes4* = ref object of KaitaiStruct
    `s1`*: TermBytes4_S1Type
    `skipTerm1`*: uint8
    `s2`*: TermBytes4_S2Type
    `skipTerm2`*: uint8
    `s3`*: TermBytes4_S3Type
    `parent`*: KaitaiStruct
    `rawS1`*: seq[byte]
    `rawS2`*: seq[byte]
    `rawS3`*: seq[byte]
  TermBytes4_S1Type* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: TermBytes4
  TermBytes4_S2Type* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: TermBytes4
  TermBytes4_S3Type* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: TermBytes4

proc read*(_: typedesc[TermBytes4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermBytes4
proc read*(_: typedesc[TermBytes4_S1Type], io: KaitaiStream, root: KaitaiStruct, parent: TermBytes4): TermBytes4_S1Type
proc read*(_: typedesc[TermBytes4_S2Type], io: KaitaiStream, root: KaitaiStruct, parent: TermBytes4): TermBytes4_S2Type
proc read*(_: typedesc[TermBytes4_S3Type], io: KaitaiStream, root: KaitaiStruct, parent: TermBytes4): TermBytes4_S3Type


proc read*(_: typedesc[TermBytes4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermBytes4 =
  template this: untyped = result
  this = new(TermBytes4)
  let root = if root == nil: cast[TermBytes4](this) else: cast[TermBytes4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawS1Expr = this.io.readBytes(int(3))
  this.rawS1 = rawS1Expr
  let rawS1Io = newKaitaiStream(rawS1Expr)
  let s1Expr = TermBytes4_S1Type.read(rawS1Io, this.root, this)
  this.s1 = s1Expr
  let skipTerm1Expr = this.io.readU1()
  this.skipTerm1 = skipTerm1Expr
  let rawS2Expr = this.io.readBytes(int(3))
  this.rawS2 = rawS2Expr
  let rawS2Io = newKaitaiStream(rawS2Expr)
  let s2Expr = TermBytes4_S2Type.read(rawS2Io, this.root, this)
  this.s2 = s2Expr
  let skipTerm2Expr = this.io.readU1()
  this.skipTerm2 = skipTerm2Expr
  let rawS3Expr = this.io.readBytes(int(3))
  this.rawS3 = rawS3Expr
  let rawS3Io = newKaitaiStream(rawS3Expr)
  let s3Expr = TermBytes4_S3Type.read(rawS3Io, this.root, this)
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermBytes4], filename: string): TermBytes4 =
  TermBytes4.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermBytes4_S1Type], io: KaitaiStream, root: KaitaiStruct, parent: TermBytes4): TermBytes4_S1Type =
  template this: untyped = result
  this = new(TermBytes4_S1Type)
  let root = if root == nil: cast[TermBytes4](this) else: cast[TermBytes4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesTerm(124, false, true, false)
  this.value = valueExpr

proc fromFile*(_: typedesc[TermBytes4_S1Type], filename: string): TermBytes4_S1Type =
  TermBytes4_S1Type.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermBytes4_S2Type], io: KaitaiStream, root: KaitaiStruct, parent: TermBytes4): TermBytes4_S2Type =
  template this: untyped = result
  this = new(TermBytes4_S2Type)
  let root = if root == nil: cast[TermBytes4](this) else: cast[TermBytes4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesTerm(124, false, false, false)
  this.value = valueExpr

proc fromFile*(_: typedesc[TermBytes4_S2Type], filename: string): TermBytes4_S2Type =
  TermBytes4_S2Type.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermBytes4_S3Type], io: KaitaiStream, root: KaitaiStruct, parent: TermBytes4): TermBytes4_S3Type =
  template this: untyped = result
  this = new(TermBytes4_S3Type)
  let root = if root == nil: cast[TermBytes4](this) else: cast[TermBytes4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesTerm(64, true, true, false)
  this.value = valueExpr

proc fromFile*(_: typedesc[TermBytes4_S3Type], filename: string): TermBytes4_S3Type =
  TermBytes4_S3Type.read(newKaitaiFileStream(filename), nil, nil)

