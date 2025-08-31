import kaitai_struct_nim_runtime
import options

type
  TermStruct2* = ref object of KaitaiStruct
    `s1`*: TermStruct2_BytesWrapper
    `s2`*: TermStruct2_BytesWrapper
    `s3`*: TermStruct2_BytesWrapper
    `parent`*: KaitaiStruct
    `rawS1`*: seq[byte]
    `rawS2`*: seq[byte]
    `rawS3`*: seq[byte]
  TermStruct2_BytesWrapper* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: TermStruct2

proc read*(_: typedesc[TermStruct2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStruct2
proc read*(_: typedesc[TermStruct2_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: TermStruct2): TermStruct2_BytesWrapper


proc read*(_: typedesc[TermStruct2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStruct2 =
  template this: untyped = result
  this = new(TermStruct2)
  let root = if root == nil: cast[TermStruct2](this) else: cast[TermStruct2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawS1Expr = this.io.readBytesTerm(124, false, true, true)
  this.rawS1 = rawS1Expr
  let rawS1Io = newKaitaiStream(rawS1Expr)
  let s1Expr = TermStruct2_BytesWrapper.read(rawS1Io, this.root, this)
  this.s1 = s1Expr
  let rawS2Expr = this.io.readBytesTerm(124, true, true, true)
  this.rawS2 = rawS2Expr
  let rawS2Io = newKaitaiStream(rawS2Expr)
  let s2Expr = TermStruct2_BytesWrapper.read(rawS2Io, this.root, this)
  this.s2 = s2Expr
  let rawS3Expr = this.io.readBytesTerm(64, false, false, true)
  this.rawS3 = rawS3Expr
  let rawS3Io = newKaitaiStream(rawS3Expr)
  let s3Expr = TermStruct2_BytesWrapper.read(rawS3Io, this.root, this)
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermStruct2], filename: string): TermStruct2 =
  TermStruct2.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStruct2_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: TermStruct2): TermStruct2_BytesWrapper =
  template this: untyped = result
  this = new(TermStruct2_BytesWrapper)
  let root = if root == nil: cast[TermStruct2](this) else: cast[TermStruct2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull()
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStruct2_BytesWrapper], filename: string): TermStruct2_BytesWrapper =
  TermStruct2_BytesWrapper.read(newKaitaiFileStream(filename), nil, nil)

