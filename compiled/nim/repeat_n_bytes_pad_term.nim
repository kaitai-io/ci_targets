import kaitai_struct_nim_runtime
import options

type
  RepeatNBytesPadTerm* = ref object of KaitaiStruct
    `records`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatNBytesPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNBytesPadTerm


proc read*(_: typedesc[RepeatNBytesPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNBytesPadTerm =
  template this: untyped = result
  this = new(RepeatNBytesPadTerm)
  let root = if root == nil: cast[RepeatNBytesPadTerm](this) else: cast[RepeatNBytesPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(3):
    let it = this.io.readBytes(int(5)).bytesStripRight(170).bytesTerminate(85, true)
    this.records.add(it)

proc fromFile*(_: typedesc[RepeatNBytesPadTerm], filename: string): RepeatNBytesPadTerm =
  RepeatNBytesPadTerm.read(newKaitaiFileStream(filename), nil, nil)

