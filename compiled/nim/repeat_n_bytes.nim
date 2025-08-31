import kaitai_struct_nim_runtime
import options

type
  RepeatNBytes* = ref object of KaitaiStruct
    `records`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatNBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNBytes


proc read*(_: typedesc[RepeatNBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNBytes =
  template this: untyped = result
  this = new(RepeatNBytes)
  let root = if root == nil: cast[RepeatNBytes](this) else: cast[RepeatNBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(3):
    let it = this.io.readBytes(int(5))
    this.records.add(it)

proc fromFile*(_: typedesc[RepeatNBytes], filename: string): RepeatNBytes =
  RepeatNBytes.read(newKaitaiFileStream(filename), nil, nil)

