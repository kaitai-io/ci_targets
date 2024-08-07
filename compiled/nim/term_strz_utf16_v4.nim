import kaitai_struct_nim_runtime
import options

type
  TermStrzUtf16V4* = ref object of KaitaiStruct
    `s1`*: TermStrzUtf16V4_S1Type
    `skipTerm1`*: seq[byte]
    `s2`*: TermStrzUtf16V4_S2Type
    `skipTerm2`*: seq[byte]
    `s3`*: TermStrzUtf16V4_S3Type
    `parent`*: KaitaiStruct
    `rawS1`*: seq[byte]
    `rawS2`*: seq[byte]
    `rawS3`*: seq[byte]
  TermStrzUtf16V4_S1Type* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: TermStrzUtf16V4
  TermStrzUtf16V4_S2Type* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: TermStrzUtf16V4
  TermStrzUtf16V4_S3Type* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: TermStrzUtf16V4

proc read*(_: typedesc[TermStrzUtf16V4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStrzUtf16V4
proc read*(_: typedesc[TermStrzUtf16V4_S1Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStrzUtf16V4): TermStrzUtf16V4_S1Type
proc read*(_: typedesc[TermStrzUtf16V4_S2Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStrzUtf16V4): TermStrzUtf16V4_S2Type
proc read*(_: typedesc[TermStrzUtf16V4_S3Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStrzUtf16V4): TermStrzUtf16V4_S3Type


proc read*(_: typedesc[TermStrzUtf16V4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStrzUtf16V4 =
  template this: untyped = result
  this = new(TermStrzUtf16V4)
  let root = if root == nil: cast[TermStrzUtf16V4](this) else: cast[TermStrzUtf16V4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawS1Expr = this.io.readBytes(int(6))
  this.rawS1 = rawS1Expr
  let rawS1Io = newKaitaiStream(rawS1Expr)
  let s1Expr = TermStrzUtf16V4_S1Type.read(rawS1Io, this.root, this)
  this.s1 = s1Expr
  let skipTerm1Expr = this.io.readBytes(int(2))
  this.skipTerm1 = skipTerm1Expr
  let rawS2Expr = this.io.readBytes(int(6))
  this.rawS2 = rawS2Expr
  let rawS2Io = newKaitaiStream(rawS2Expr)
  let s2Expr = TermStrzUtf16V4_S2Type.read(rawS2Io, this.root, this)
  this.s2 = s2Expr
  let skipTerm2Expr = this.io.readBytes(int(2))
  this.skipTerm2 = skipTerm2Expr
  let rawS3Expr = this.io.readBytes(int(6))
  this.rawS3 = rawS3Expr
  let rawS3Io = newKaitaiStream(rawS3Expr)
  let s3Expr = TermStrzUtf16V4_S3Type.read(rawS3Io, this.root, this)
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermStrzUtf16V4], filename: string): TermStrzUtf16V4 =
  TermStrzUtf16V4.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStrzUtf16V4_S1Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStrzUtf16V4): TermStrzUtf16V4_S1Type =
  template this: untyped = result
  this = new(TermStrzUtf16V4_S1Type)
  let root = if root == nil: cast[TermStrzUtf16V4](this) else: cast[TermStrzUtf16V4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTermMulti(@[0'u8, 0'u8], false, true, false), "UTF-16LE")
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStrzUtf16V4_S1Type], filename: string): TermStrzUtf16V4_S1Type =
  TermStrzUtf16V4_S1Type.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStrzUtf16V4_S2Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStrzUtf16V4): TermStrzUtf16V4_S2Type =
  template this: untyped = result
  this = new(TermStrzUtf16V4_S2Type)
  let root = if root == nil: cast[TermStrzUtf16V4](this) else: cast[TermStrzUtf16V4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTermMulti(@[0'u8, 0'u8], false, false, false), "UTF-16LE")
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStrzUtf16V4_S2Type], filename: string): TermStrzUtf16V4_S2Type =
  TermStrzUtf16V4_S2Type.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStrzUtf16V4_S3Type], io: KaitaiStream, root: KaitaiStruct, parent: TermStrzUtf16V4): TermStrzUtf16V4_S3Type =
  template this: untyped = result
  this = new(TermStrzUtf16V4_S3Type)
  let root = if root == nil: cast[TermStrzUtf16V4](this) else: cast[TermStrzUtf16V4](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTermMulti(@[0'u8, 0'u8], true, true, false), "UTF-16LE")
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStrzUtf16V4_S3Type], filename: string): TermStrzUtf16V4_S3Type =
  TermStrzUtf16V4_S3Type.read(newKaitaiFileStream(filename), nil, nil)

