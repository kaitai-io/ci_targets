import kaitai_struct_nim_runtime
import options

type
  RepeatUntilBytes* = ref object of KaitaiStruct
    `records`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatUntilBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilBytes


proc read*(_: typedesc[RepeatUntilBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilBytes =
  template this: untyped = result
  this = new(RepeatUntilBytes)
  let root = if root == nil: cast[RepeatUntilBytes](this) else: cast[RepeatUntilBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while true:
      let it = this.io.readBytes(int(5))
      this.records.add(it)
      if it[0] == 170:
        break
      inc i

proc fromFile*(_: typedesc[RepeatUntilBytes], filename: string): RepeatUntilBytes =
  RepeatUntilBytes.read(newKaitaiFileStream(filename), nil, nil)

