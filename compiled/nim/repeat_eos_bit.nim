import kaitai_struct_nim_runtime
import options

type
  RepeatEosBit* = ref object of KaitaiStruct
    nibbles*: seq[uint64]
    parent*: KaitaiStruct

proc read*(_: typedesc[RepeatEosBit], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBit


proc read*(_: typedesc[RepeatEosBit], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBit =
  template this: untyped = result
  this = new(RepeatEosBit)
  let root = if root == nil: cast[RepeatEosBit](this) else: cast[RepeatEosBit](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readBitsIntBe(4)
      this.nibbles.add(it)
      inc i

proc fromFile*(_: typedesc[RepeatEosBit], filename: string): RepeatEosBit =
  RepeatEosBit.read(newKaitaiFileStream(filename), nil, nil)

