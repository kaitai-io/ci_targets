import kaitai_struct_nim_runtime
import options

type
  RepeatEosTermBytes* = ref object of KaitaiStruct
    `records`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[RepeatEosTermBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosTermBytes


proc read*(_: typedesc[RepeatEosTermBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosTermBytes =
  template this: untyped = result
  this = new(RepeatEosTermBytes)
  let root = if root == nil: cast[RepeatEosTermBytes](this) else: cast[RepeatEosTermBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readBytesTerm(178, true, true, true)
      this.records.add(it)
      inc i

proc fromFile*(_: typedesc[RepeatEosTermBytes], filename: string): RepeatEosTermBytes =
  RepeatEosTermBytes.read(newKaitaiFileStream(filename), nil, nil)

