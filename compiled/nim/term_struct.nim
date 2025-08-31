import kaitai_struct_nim_runtime
import options

type
  TermStruct* = ref object of KaitaiStruct
    `s1`*: TermStruct_BytesWrapper
    `s2`*: TermStruct_BytesWrapper
    `s3`*: TermStruct_BytesWrapper
    `parent`*: KaitaiStruct
    `rawS1`*: seq[byte]
    `rawS2`*: seq[byte]
    `rawS3`*: seq[byte]
  TermStruct_BytesWrapper* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: TermStruct

proc read*(_: typedesc[TermStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStruct
proc read*(_: typedesc[TermStruct_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: TermStruct): TermStruct_BytesWrapper


proc read*(_: typedesc[TermStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TermStruct =
  template this: untyped = result
  this = new(TermStruct)
  let root = if root == nil: cast[TermStruct](this) else: cast[TermStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawS1Expr = this.io.readBytesTerm(124, false, true, true)
  this.rawS1 = rawS1Expr
  let rawS1Io = newKaitaiStream(rawS1Expr)
  let s1Expr = TermStruct_BytesWrapper.read(rawS1Io, this.root, this)
  this.s1 = s1Expr
  let rawS2Expr = this.io.readBytesTerm(124, false, false, true)
  this.rawS2 = rawS2Expr
  let rawS2Io = newKaitaiStream(rawS2Expr)
  let s2Expr = TermStruct_BytesWrapper.read(rawS2Io, this.root, this)
  this.s2 = s2Expr
  let rawS3Expr = this.io.readBytesTerm(64, true, true, true)
  this.rawS3 = rawS3Expr
  let rawS3Io = newKaitaiStream(rawS3Expr)
  let s3Expr = TermStruct_BytesWrapper.read(rawS3Io, this.root, this)
  this.s3 = s3Expr

proc fromFile*(_: typedesc[TermStruct], filename: string): TermStruct =
  TermStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TermStruct_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: TermStruct): TermStruct_BytesWrapper =
  template this: untyped = result
  this = new(TermStruct_BytesWrapper)
  let root = if root == nil: cast[TermStruct](this) else: cast[TermStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull()
  this.value = valueExpr

proc fromFile*(_: typedesc[TermStruct_BytesWrapper], filename: string): TermStruct_BytesWrapper =
  TermStruct_BytesWrapper.read(newKaitaiFileStream(filename), nil, nil)

