import kaitai_struct_nim_runtime
import options

type
  RepeatNBytesPad* = ref object of KaitaiStruct
    `records`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatNBytesPad], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNBytesPad


proc read*(_: typedesc[RepeatNBytesPad], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNBytesPad =
  template this: untyped = result
  this = new(RepeatNBytesPad)
  let root = if root == nil: cast[RepeatNBytesPad](this) else: cast[RepeatNBytesPad](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(3):
    let it = this.io.readBytes(int(5)).bytesStripRight(170)
    this.records.add(it)

proc fromFile*(_: typedesc[RepeatNBytesPad], filename: string): RepeatNBytesPad =
  RepeatNBytesPad.read(newKaitaiFileStream(filename), nil, nil)

