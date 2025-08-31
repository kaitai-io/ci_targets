import kaitai_struct_nim_runtime
import options

type
  RepeatUntilTermStruct* = ref object of KaitaiStruct
    `records1`*: seq[RepeatUntilTermStruct_BytesWrapper]
    `records2`*: seq[RepeatUntilTermStruct_BytesWrapper]
    `records3`*: seq[RepeatUntilTermStruct_BytesWrapper]
    `parent`*: KaitaiStruct
    `rawRecords1`*: seq[seq[byte]]
    `rawRecords2`*: seq[seq[byte]]
    `rawRecords3`*: seq[seq[byte]]
  RepeatUntilTermStruct_BytesWrapper* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: RepeatUntilTermStruct

proc read*(_: typedesc[RepeatUntilTermStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilTermStruct
proc read*(_: typedesc[RepeatUntilTermStruct_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: RepeatUntilTermStruct): RepeatUntilTermStruct_BytesWrapper


proc read*(_: typedesc[RepeatUntilTermStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilTermStruct =
  template this: untyped = result
  this = new(RepeatUntilTermStruct)
  let root = if root == nil: cast[RepeatUntilTermStruct](this) else: cast[RepeatUntilTermStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while true:
      let buf = this.io.readBytesTerm(170, false, true, true)
      this.rawRecords1.add(buf)
      let rawRecords1Io = newKaitaiStream(buf)
      let it = RepeatUntilTermStruct_BytesWrapper.read(rawRecords1Io, this.root, this)
      this.records1.add(it)
      if len(it.value) == 0:
        break
      inc i
  block:
    var i: int
    while true:
      let buf = this.io.readBytesTerm(170, true, true, true)
      this.rawRecords2.add(buf)
      let rawRecords2Io = newKaitaiStream(buf)
      let it = RepeatUntilTermStruct_BytesWrapper.read(rawRecords2Io, this.root, this)
      this.records2.add(it)
      if it.value != @[170'u8]:
        break
      inc i
  block:
    var i: int
    while true:
      let buf = this.io.readBytesTerm(85, false, false, true)
      this.rawRecords3.add(buf)
      let rawRecords3Io = newKaitaiStream(buf)
      let it = RepeatUntilTermStruct_BytesWrapper.read(rawRecords3Io, this.root, this)
      this.records3.add(it)
      if it.value == this.records1[^1].value:
        break
      inc i

proc fromFile*(_: typedesc[RepeatUntilTermStruct], filename: string): RepeatUntilTermStruct =
  RepeatUntilTermStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[RepeatUntilTermStruct_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: RepeatUntilTermStruct): RepeatUntilTermStruct_BytesWrapper =
  template this: untyped = result
  this = new(RepeatUntilTermStruct_BytesWrapper)
  let root = if root == nil: cast[RepeatUntilTermStruct](this) else: cast[RepeatUntilTermStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull()
  this.value = valueExpr

proc fromFile*(_: typedesc[RepeatUntilTermStruct_BytesWrapper], filename: string): RepeatUntilTermStruct_BytesWrapper =
  RepeatUntilTermStruct_BytesWrapper.read(newKaitaiFileStream(filename), nil, nil)

