import kaitai_struct_nim_runtime
import options

type
  RepeatEosBytesPad* = ref object of KaitaiStruct
    `records`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatEosBytesPad], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBytesPad


proc read*(_: typedesc[RepeatEosBytesPad], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBytesPad =
  template this: untyped = result
  this = new(RepeatEosBytesPad)
  let root = if root == nil: cast[RepeatEosBytesPad](this) else: cast[RepeatEosBytesPad](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readBytes(int(5)).bytesStripRight(170)
      this.records.add(it)
      inc i

proc fromFile*(_: typedesc[RepeatEosBytesPad], filename: string): RepeatEosBytesPad =
  RepeatEosBytesPad.read(newKaitaiFileStream(filename), nil, nil)

