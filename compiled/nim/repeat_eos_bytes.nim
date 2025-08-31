import kaitai_struct_nim_runtime
import options

type
  RepeatEosBytes* = ref object of KaitaiStruct
    `records`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatEosBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBytes


proc read*(_: typedesc[RepeatEosBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBytes =
  template this: untyped = result
  this = new(RepeatEosBytes)
  let root = if root == nil: cast[RepeatEosBytes](this) else: cast[RepeatEosBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readBytes(int(5))
      this.records.add(it)
      inc i

proc fromFile*(_: typedesc[RepeatEosBytes], filename: string): RepeatEosBytes =
  RepeatEosBytes.read(newKaitaiFileStream(filename), nil, nil)

