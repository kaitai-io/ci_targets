import kaitai_struct_nim_runtime
import options

type
  RepeatUntilBytesPadTerm* = ref object of KaitaiStruct
    `records`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatUntilBytesPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilBytesPadTerm


proc read*(_: typedesc[RepeatUntilBytesPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilBytesPadTerm =
  template this: untyped = result
  this = new(RepeatUntilBytesPadTerm)
  let root = if root == nil: cast[RepeatUntilBytesPadTerm](this) else: cast[RepeatUntilBytesPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while true:
      let it = this.io.readBytes(int(5)).bytesStripRight(170).bytesTerminate(85, true)
      this.records.add(it)
      if it == @[170'u8, 85'u8]:
        break
      inc i

proc fromFile*(_: typedesc[RepeatUntilBytesPadTerm], filename: string): RepeatUntilBytesPadTerm =
  RepeatUntilBytesPadTerm.read(newKaitaiFileStream(filename), nil, nil)

