import kaitai_struct_nim_runtime
import options

type
  RepeatEosBitsB4* = ref object of KaitaiStruct
    `nibbles`*: seq[uint64]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatEosBitsB4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBitsB4


proc read*(_: typedesc[RepeatEosBitsB4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBitsB4 =
  template this: untyped = result
  this = new(RepeatEosBitsB4)
  let root = if root == nil: cast[RepeatEosBitsB4](this) else: cast[RepeatEosBitsB4](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readBitsIntBe(4)
      this.nibbles.add(it)
      inc i

proc fromFile*(_: typedesc[RepeatEosBitsB4], filename: string): RepeatEosBitsB4 =
  RepeatEosBitsB4.read(newKaitaiFileStream(filename), nil, nil)

