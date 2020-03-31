import kaitai_struct_nim_runtime
import options
import encodings

type
  RepeatUntilS4* = ref object of KaitaiStruct
    entries*: seq[int32]
    afterall*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[RepeatUntilS4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilS4 =
  template this: untyped = result
  this = new(RepeatUntilS4)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.entries = newSeq[int32]()
  block:
    int32 _;
    var i: int
    while true:
      let _ = this.io.readS4le()
      this.entries.add(_)
      if this._ == -1:
        break
      inc i

    ##[
    ]##
    this.afterall = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

  proc fromFile*(_: typedesc[RepeatUntilS4], filename: string): RepeatUntilS4 =
    RepeatUntilS4.read(newKaitaiFileStream(filename), nil, nil)

