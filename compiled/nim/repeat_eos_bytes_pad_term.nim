import kaitai_struct_nim_runtime
import options

type
  RepeatEosBytesPadTerm* = ref object of KaitaiStruct
    `records`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatEosBytesPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBytesPadTerm


proc read*(_: typedesc[RepeatEosBytesPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBytesPadTerm =
  template this: untyped = result
  this = new(RepeatEosBytesPadTerm)
  let root = if root == nil: cast[RepeatEosBytesPadTerm](this) else: cast[RepeatEosBytesPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readBytes(int(5)).bytesStripRight(170).bytesTerminate(85, true)
      this.records.add(it)
      inc i

proc fromFile*(_: typedesc[RepeatEosBytesPadTerm], filename: string): RepeatEosBytesPadTerm =
  RepeatEosBytesPadTerm.read(newKaitaiFileStream(filename), nil, nil)

