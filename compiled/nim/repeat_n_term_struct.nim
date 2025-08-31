import kaitai_struct_nim_runtime
import options

type
  RepeatNTermStruct* = ref object of KaitaiStruct
    `records1`*: seq[RepeatNTermStruct_BytesWrapper]
    `records2`*: seq[RepeatNTermStruct_BytesWrapper]
    `records3`*: seq[RepeatNTermStruct_BytesWrapper]
    `parent`*: KaitaiStruct
    `rawRecords1`*: seq[seq[byte]]
    `rawRecords2`*: seq[seq[byte]]
    `rawRecords3`*: seq[seq[byte]]
  RepeatNTermStruct_BytesWrapper* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: RepeatNTermStruct

proc read*(_: typedesc[RepeatNTermStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNTermStruct
proc read*(_: typedesc[RepeatNTermStruct_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: RepeatNTermStruct): RepeatNTermStruct_BytesWrapper


proc read*(_: typedesc[RepeatNTermStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNTermStruct =
  template this: untyped = result
  this = new(RepeatNTermStruct)
  let root = if root == nil: cast[RepeatNTermStruct](this) else: cast[RepeatNTermStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(2):
    let buf = this.io.readBytesTerm(170, false, true, true)
    this.rawRecords1.add(buf)
    let rawRecords1Io = newKaitaiStream(buf)
    let it = RepeatNTermStruct_BytesWrapper.read(rawRecords1Io, this.root, this)
    this.records1.add(it)
  for i in 0 ..< int(2):
    let buf = this.io.readBytesTerm(170, true, true, true)
    this.rawRecords2.add(buf)
    let rawRecords2Io = newKaitaiStream(buf)
    let it = RepeatNTermStruct_BytesWrapper.read(rawRecords2Io, this.root, this)
    this.records2.add(it)
  for i in 0 ..< int(2):
    let buf = this.io.readBytesTerm(85, false, false, true)
    this.rawRecords3.add(buf)
    let rawRecords3Io = newKaitaiStream(buf)
    let it = RepeatNTermStruct_BytesWrapper.read(rawRecords3Io, this.root, this)
    this.records3.add(it)

proc fromFile*(_: typedesc[RepeatNTermStruct], filename: string): RepeatNTermStruct =
  RepeatNTermStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[RepeatNTermStruct_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: RepeatNTermStruct): RepeatNTermStruct_BytesWrapper =
  template this: untyped = result
  this = new(RepeatNTermStruct_BytesWrapper)
  let root = if root == nil: cast[RepeatNTermStruct](this) else: cast[RepeatNTermStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull()
  this.value = valueExpr

proc fromFile*(_: typedesc[RepeatNTermStruct_BytesWrapper], filename: string): RepeatNTermStruct_BytesWrapper =
  RepeatNTermStruct_BytesWrapper.read(newKaitaiFileStream(filename), nil, nil)

