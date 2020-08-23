import kaitai_struct_nim_runtime
import options

type
  RepeatEosU4* = ref object of KaitaiStruct
    `numbers`*: seq[uint32]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatEosU4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosU4


proc read*(_: typedesc[RepeatEosU4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosU4 =
  template this: untyped = result
  this = new(RepeatEosU4)
  let root = if root == nil: cast[RepeatEosU4](this) else: cast[RepeatEosU4](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readU4le()
      this.numbers.add(it)
      inc i

proc fromFile*(_: typedesc[RepeatEosU4], filename: string): RepeatEosU4 =
  RepeatEosU4.read(newKaitaiFileStream(filename), nil, nil)

