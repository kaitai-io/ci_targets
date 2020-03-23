import kaitai_struct_nim_runtime

type
  RepeatEosBit* = ref RepeatEosBitObj
  RepeatEosBitObj* = object
    nibbles*: seq[uint64]
    io*: KaitaiStream
    root*: RepeatEosBit
    parent*: ref RootObj

### RepeatEosBit ###
proc read*(_: typedesc[RepeatEosBit], io: KaitaiStream, root: RepeatEosBit, parent: ref RootObj): RepeatEosBit =
  result = new(RepeatEosBit)
  let root = if root == nil: cast[RepeatEosBit](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.nibbles = newSeq[uint64]()
  block:
    var i: int
    while not result.io.eof:
      result.nibbles.add(result.io.readBitsInt(4))
      inc i

proc fromFile*(_: typedesc[RepeatEosBit], filename: string): RepeatEosBit =
  RepeatEosBit.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatEosBitObj) =
  close(x.io)

