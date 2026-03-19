import kaitai_struct_nim_runtime
import options

type
  RepeatEosBitsB1* = ref object of KaitaiStruct
    `bits`*: seq[bool]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatEosBitsB1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBitsB1


proc read*(_: typedesc[RepeatEosBitsB1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBitsB1 =
  template this: untyped = result
  this = new(RepeatEosBitsB1)
  let root = if root == nil: cast[RepeatEosBitsB1](this) else: cast[RepeatEosBitsB1](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readBitsIntBe(1) != 0
      this.bits.add(it)
      inc i

proc fromFile*(_: typedesc[RepeatEosBitsB1], filename: string): RepeatEosBitsB1 =
  RepeatEosBitsB1.read(newKaitaiFileStream(filename), nil, nil)

