import kaitai_struct_nim_runtime
import options

type
  RepeatUntilBytesPad* = ref object of KaitaiStruct
    `records`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatUntilBytesPad], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilBytesPad


proc read*(_: typedesc[RepeatUntilBytesPad], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilBytesPad =
  template this: untyped = result
  this = new(RepeatUntilBytesPad)
  let root = if root == nil: cast[RepeatUntilBytesPad](this) else: cast[RepeatUntilBytesPad](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while true:
      let it = this.io.readBytes(int(5)).bytesStripRight(170)
      this.records.add(it)
      if len(it) == 5:
        break
      inc i

proc fromFile*(_: typedesc[RepeatUntilBytesPad], filename: string): RepeatUntilBytesPad =
  RepeatUntilBytesPad.read(newKaitaiFileStream(filename), nil, nil)

