import kaitai_struct_nim_runtime
import options

type
  TermStruct4* = ref object of KaitaiStruct
    `s1`*: TermStruct4_S1Type
    `skipTerm1`*: uint8
    `s2`*: TermStruct4_S2Type
    `skipTerm2`*: uint8
    `s3`*: TermStruct4_S3Type
    `parent`*: KaitaiStruct
    `rawS1`*: seq[byte]
    `rawS2`*: seq[byte]
    `rawS3`*: seq[byte]
  TermStruct4_BytesWrapper* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: KaitaiStruct
  TermStruct4_S1Type* = ref object of KaitaiStruct
    `value`*: TermStruct4_BytesWrapper
    `parent`*: TermStruct4
    `rawValue`*: seq[byte]
  TermStruct4_S2Type* = ref object of KaitaiStruct
    `value`*: TermStruct4_BytesWrapper
    `parent`*: TermStruct4
    `rawValue`*: seq[byte]
  TermStruct4_S3Type* = ref object of KaitaiStruct
    `value`*: TermStruct4_BytesWrapper
    `parent`*: TermStruct4
    `rawValue`*: seq[byte]

proc read*(_: typedesc[TermStruct4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStruct4
proc read*(_: typedesc[TermStruct4_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStruct4_BytesWrapper
proc read*(_: typedesc[TermStruct4_S1Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStruct4): TermStruct4_S1Type
proc read*(_: typedesc[TermStruct4_S2Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStruct4): TermStruct4_S2Type
proc read*(_: typedesc[TermStruct4_S3Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStruct4): TermStruct4_S3Type


proc read*(_: typedesc[TermStruct4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStruct4 =
  template this: untyped = result
  this = new(TermStruct4)
  let root = if root == nil: cast[TermStruct4](this) else: cast[TermStruct4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawS1Expr = this.io.readBytes(int(3))
  this.rawS1 = rawS1Expr
  let rawS1Io = newKaitaiStream(rawS1Expr)
  let s1Expr = TermStruct4_S1Type.read(rawS1Io, this.root, this)
  this.s1 = s1Expr
  let skipTerm1Expr = this.io.readU1()
  this.skipTerm1 = skipTerm1Expr
  let rawS2Expr = this.io.readBytes(int(3))
  this.rawS2 = rawS2Expr
  let rawS2Io = newKaitaiStream(rawS2Expr)
  let s2Expr = TermStruct4_S2Type.read(rawS2Io, this.root, this)
  this.s2 = s2Expr
  let skipTerm2Expr = this.io.readU1()
  this.skipTerm2 = skipTerm2Expr
  let rawS3Expr = this.io.readBytes(int(3))
  this.rawS3 = rawS3Expr
  let rawS3Io = newKaitaiStream(rawS3Expr)
  let s3Expr = TermStruct4_S3Type.read(rawS3Io, this.root, this)
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermStruct4], filename: string): TermStruct4 =
  TermStruct4.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStruct4_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStruct4_BytesWrapper =
  template this: untyped = result
  this = new(TermStruct4_BytesWrapper)
  let root = if root == nil: cast[TermStruct4](this) else: cast[TermStruct4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull()
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStruct4_BytesWrapper], filename: string): TermStruct4_BytesWrapper =
  TermStruct4_BytesWrapper.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStruct4_S1Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStruct4): TermStruct4_S1Type =
  template this: untyped = result
  this = new(TermStruct4_S1Type)
  let root = if root == nil: cast[TermStruct4](this) else: cast[TermStruct4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawValueExpr = this.io.readBytesTerm(124, false, true, false)
  this.rawValue = rawValueExpr
  let rawValueIo = newKaitaiStream(rawValueExpr)
  let valueExpr = TermStruct4_BytesWrapper.read(rawValueIo, this.root, this)
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStruct4_S1Type], filename: string): TermStruct4_S1Type =
  TermStruct4_S1Type.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStruct4_S2Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStruct4): TermStruct4_S2Type =
  template this: untyped = result
  this = new(TermStruct4_S2Type)
  let root = if root == nil: cast[TermStruct4](this) else: cast[TermStruct4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawValueExpr = this.io.readBytesTerm(124, false, false, false)
  this.rawValue = rawValueExpr
  let rawValueIo = newKaitaiStream(rawValueExpr)
  let valueExpr = TermStruct4_BytesWrapper.read(rawValueIo, this.root, this)
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStruct4_S2Type], filename: string): TermStruct4_S2Type =
  TermStruct4_S2Type.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStruct4_S3Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStruct4): TermStruct4_S3Type =
  template this: untyped = result
  this = new(TermStruct4_S3Type)
  let root = if root == nil: cast[TermStruct4](this) else: cast[TermStruct4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawValueExpr = this.io.readBytesTerm(64, true, true, false)
  this.rawValue = rawValueExpr
  let rawValueIo = newKaitaiStream(rawValueExpr)
  let valueExpr = TermStruct4_BytesWrapper.read(rawValueIo, this.root, this)
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStruct4_S3Type], filename: string): TermStruct4_S3Type =
  TermStruct4_S3Type.read(newKaitaiFileStream(filename), nil, nil)

