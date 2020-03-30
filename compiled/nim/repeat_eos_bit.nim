import kaitai_struct_nim_runtime
import options

type
  RepeatEosBit* = ref RepeatEosBitObj
  RepeatEosBitObj* = object
    nibbles*: seq[uint64]
    io*: KaitaiStream
    root*: RepeatEosBit
    parent*: ref RootObj

## RepeatEosBit
proc read*(_: typedesc[RepeatEosBit], io: KaitaiStream, root: RepeatEosBit, parent: ref RootObj): RepeatEosBit =
  let this = new(RepeatEosBit)
  let root = if root == nil: cast[RepeatEosBit](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.nibbles = newSeq[uint64]()
  block:
    var i: int
    while not this.io.eof:
      this.nibbles.add(this.io.readBitsInt(4))
      inc i
  result = this

proc fromFile*(_: typedesc[RepeatEosBit], filename: string): RepeatEosBit =
  RepeatEosBit.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatEosBitObj) =
  close(x.io)

