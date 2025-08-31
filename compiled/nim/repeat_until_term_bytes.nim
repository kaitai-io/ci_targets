import kaitai_struct_nim_runtime
import options

type
  RepeatUntilTermBytes* = ref object of KaitaiStruct
    `records1`*: seq[seq[byte]]
    `records2`*: seq[seq[byte]]
    `records3`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatUntilTermBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilTermBytes


proc read*(_: typedesc[RepeatUntilTermBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilTermBytes =
  template this: untyped = result
  this = new(RepeatUntilTermBytes)
  let root = if root == nil: cast[RepeatUntilTermBytes](this) else: cast[RepeatUntilTermBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while true:
      let it = this.io.readBytesTerm(170, false, true, true)
      this.records1.add(it)
      if len(it) == 0:
        break
      inc i
  block:
    var i: int
    while true:
      let it = this.io.readBytesTerm(170, true, true, true)
      this.records2.add(it)
      if it != @[170'u8]:
        break
      inc i
  block:
    var i: int
    while true:
      let it = this.io.readBytesTerm(85, false, false, true)
      this.records3.add(it)
      if it == this.records1[^1]:
        break
      inc i

proc fromFile*(_: typedesc[RepeatUntilTermBytes], filename: string): RepeatUntilTermBytes =
  RepeatUntilTermBytes.read(newKaitaiFileStream(filename), nil, nil)

