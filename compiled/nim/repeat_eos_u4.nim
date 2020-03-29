import kaitai_struct_nim_runtime

type
  RepeatEosU4* = ref RepeatEosU4Obj
  RepeatEosU4Obj* = object
    numbers*: seq[uint32]
    io*: KaitaiStream
    root*: RepeatEosU4
    parent*: ref RootObj

### RepeatEosU4 ###
proc read*(_: typedesc[RepeatEosU4], io: KaitaiStream, root: RepeatEosU4, parent: ref RootObj): RepeatEosU4 =
  result = new(RepeatEosU4)
  let root = if root == nil: cast[RepeatEosU4](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  numbers = newSeq[uint32]()
  block:
    var i: int
    while not io.eof:
      numbers.add(io.readU4le())
      inc i

proc fromFile*(_: typedesc[RepeatEosU4], filename: string): RepeatEosU4 =
  RepeatEosU4.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatEosU4Obj) =
  close(x.io)

