import kaitai_struct_nim_runtime
import options

type
  RepeatEosTermStruct* = ref object of KaitaiStruct
    `records`*: seq[RepeatEosTermStruct_BytesWrapper]
    `parent`*: KaitaiStruct
    `rawRecords`*: seq[seq[byte]]
  RepeatEosTermStruct_BytesWrapper* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: RepeatEosTermStruct

proc read*(_: typedesc[RepeatEosTermStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosTermStruct
proc read*(_: typedesc[RepeatEosTermStruct_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: RepeatEosTermStruct): RepeatEosTermStruct_BytesWrapper


proc read*(_: typedesc[RepeatEosTermStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosTermStruct =
  template this: untyped = result
  this = new(RepeatEosTermStruct)
  let root = if root == nil: cast[RepeatEosTermStruct](this) else: cast[RepeatEosTermStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let buf = this.io.readBytesTerm(178, true, true, true)
      this.rawRecords.add(buf)
      let rawRecordsIo = newKaitaiStream(buf)
      let it = RepeatEosTermStruct_BytesWrapper.read(rawRecordsIo, this.root, this)
      this.records.add(it)
      inc i

proc fromFile*(_: typedesc[RepeatEosTermStruct], filename: string): RepeatEosTermStruct =
  RepeatEosTermStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[RepeatEosTermStruct_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: RepeatEosTermStruct): RepeatEosTermStruct_BytesWrapper =
  template this: untyped = result
  this = new(RepeatEosTermStruct_BytesWrapper)
  let root = if root == nil: cast[RepeatEosTermStruct](this) else: cast[RepeatEosTermStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull()
  this.value = valueExpr

proc fromFile*(_: typedesc[RepeatEosTermStruct_BytesWrapper], filename: string): RepeatEosTermStruct_BytesWrapper =
  RepeatEosTermStruct_BytesWrapper.read(newKaitaiFileStream(filename), nil, nil)

