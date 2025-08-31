import kaitai_struct_nim_runtime
import options
import my_custom_fx

type
  ProcessTermStruct* = ref object of KaitaiStruct
    `s1`*: ProcessTermStruct_BytesWrapper
    `s2`*: ProcessTermStruct_BytesWrapper
    `s3`*: ProcessTermStruct_BytesWrapper
    `parent`*: KaitaiStruct
    `rawS1`*: seq[byte]
    `rawRawS1`*: seq[byte]
    `rawS2`*: seq[byte]
    `rawRawS2`*: seq[byte]
    `rawS3`*: seq[byte]
    `rawRawS3`*: seq[byte]
  ProcessTermStruct_BytesWrapper* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: ProcessTermStruct

proc read*(_: typedesc[ProcessTermStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessTermStruct
proc read*(_: typedesc[ProcessTermStruct_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: ProcessTermStruct): ProcessTermStruct_BytesWrapper


proc read*(_: typedesc[ProcessTermStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessTermStruct =
  template this: untyped = result
  this = new(ProcessTermStruct)
  let root = if root == nil: cast[ProcessTermStruct](this) else: cast[ProcessTermStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawRawS1Expr = this.io.readBytesTerm(124, false, true, true)
  this.rawRawS1 = rawRawS1Expr
  let rawS1Expr = my_custom_fx(this.rawRawS1, 32, false, @[0'u8])
  this.rawS1 = rawS1Expr
  let rawS1Io = newKaitaiStream(rawS1Expr)
  let s1Expr = ProcessTermStruct_BytesWrapper.read(rawS1Io, this.root, this)
  this.s1 = s1Expr
  let rawRawS2Expr = this.io.readBytesTerm(124, false, false, true)
  this.rawRawS2 = rawRawS2Expr
  let rawS2Expr = my_custom_fx(this.rawRawS2, 32, false, @[0'u8])
  this.rawS2 = rawS2Expr
  let rawS2Io = newKaitaiStream(rawS2Expr)
  let s2Expr = ProcessTermStruct_BytesWrapper.read(rawS2Io, this.root, this)
  this.s2 = s2Expr
  let rawRawS3Expr = this.io.readBytesTerm(64, true, true, true)
  this.rawRawS3 = rawRawS3Expr
  let rawS3Expr = my_custom_fx(this.rawRawS3, 32, false, @[0'u8])
  this.rawS3 = rawS3Expr
  let rawS3Io = newKaitaiStream(rawS3Expr)
  let s3Expr = ProcessTermStruct_BytesWrapper.read(rawS3Io, this.root, this)
  this.s3 = s3Expr

proc fromFile*(_: typedesc[ProcessTermStruct], filename: string): ProcessTermStruct =
  ProcessTermStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessTermStruct_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: ProcessTermStruct): ProcessTermStruct_BytesWrapper =
  template this: untyped = result
  this = new(ProcessTermStruct_BytesWrapper)
  let root = if root == nil: cast[ProcessTermStruct](this) else: cast[ProcessTermStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull()
  this.value = valueExpr

proc fromFile*(_: typedesc[ProcessTermStruct_BytesWrapper], filename: string): ProcessTermStruct_BytesWrapper =
  ProcessTermStruct_BytesWrapper.read(newKaitaiFileStream(filename), nil, nil)

