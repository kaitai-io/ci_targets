import kaitai_struct_nim_runtime
import options

type
  TermStruct3* = ref object of KaitaiStruct
    `s1`*: TermStruct3_BytesWrapper
    `s2`*: TermStruct3_BytesWrapper
    `s3`*: TermStruct3_BytesWrapper
    `parent`*: KaitaiStruct
    `rawS1`*: seq[byte]
    `rawS2`*: seq[byte]
    `rawS3`*: seq[byte]
  TermStruct3_BytesWrapper* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: TermStruct3

proc read*(_: typedesc[TermStruct3], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStruct3
proc read*(_: typedesc[TermStruct3_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: TermStruct3): TermStruct3_BytesWrapper


proc read*(_: typedesc[TermStruct3], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStruct3 =
  template this: untyped = result
  this = new(TermStruct3)
  let root = if root == nil: cast[TermStruct3](this) else: cast[TermStruct3](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawS1Expr = this.io.readBytesTerm(124, false, false, true)
  this.rawS1 = rawS1Expr
  let rawS1Io = newKaitaiStream(rawS1Expr)
  let s1Expr = TermStruct3_BytesWrapper.read(rawS1Io, this.root, this)
  this.s1 = s1Expr
  let rawS2Expr = this.io.readBytesTerm(64, false, false, true)
  this.rawS2 = rawS2Expr
  let rawS2Io = newKaitaiStream(rawS2Expr)
  let s2Expr = TermStruct3_BytesWrapper.read(rawS2Io, this.root, this)
  this.s2 = s2Expr
  let rawS3Expr = this.io.readBytesTerm(64, false, true, true)
  this.rawS3 = rawS3Expr
  let rawS3Io = newKaitaiStream(rawS3Expr)
  let s3Expr = TermStruct3_BytesWrapper.read(rawS3Io, this.root, this)
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermStruct3], filename: string): TermStruct3 =
  TermStruct3.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStruct3_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: TermStruct3): TermStruct3_BytesWrapper =
  template this: untyped = result
  this = new(TermStruct3_BytesWrapper)
  let root = if root == nil: cast[TermStruct3](this) else: cast[TermStruct3](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull()
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStruct3_BytesWrapper], filename: string): TermStruct3_BytesWrapper =
  TermStruct3_BytesWrapper.read(newKaitaiFileStream(filename), nil, nil)

