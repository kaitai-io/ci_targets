import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  RepeatEosBit* = ref object of KaitaiStruct
    nibbles*: seq[uint64]
    parent*: KaitaiStruct

proc read*(_: typedesc[RepeatEosBit], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBit


proc read*(_: typedesc[RepeatEosBit], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosBit =
  template this: untyped = result
  this = new(RepeatEosBit)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      this.nibbles.add(this.io.readBitsInt(4))
      inc i

proc fromFile*(_: typedesc[RepeatEosBit], filename: string): RepeatEosBit =
  RepeatEosBit.read(newKaitaiFileStream(filename), nil, nil)

