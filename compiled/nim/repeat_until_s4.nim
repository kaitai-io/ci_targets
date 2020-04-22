import kaitai_struct_nim_runtime
import options

type
  RepeatUntilS4* = ref object of KaitaiStruct
    entries*: seq[int32]
    afterall*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[RepeatUntilS4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilS4


proc read*(_: typedesc[RepeatUntilS4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilS4 =
  template this: untyped = result
  this = new(RepeatUntilS4)
  let root = if root == nil: cast[RepeatUntilS4](this) else: cast[RepeatUntilS4](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while true:
      let it = this.io.readS4le()
      this.entries.add(it)
      if it == -1:
        break
      inc i
  let afterallExpr = encode(this.io.readBytesTerm(0, false, true, true), "ASCII")
  this.afterall = afterallExpr

proc fromFile*(_: typedesc[RepeatUntilS4], filename: string): RepeatUntilS4 =
  RepeatUntilS4.read(newKaitaiFileStream(filename), nil, nil)

