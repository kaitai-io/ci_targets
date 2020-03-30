import kaitai_struct_nim_runtime
import options

type
  RepeatEosU4* = ref RepeatEosU4Obj
  RepeatEosU4Obj* = object
    numbers*: seq[uint32]
    io*: KaitaiStream
    root*: RepeatEosU4
    parent*: ref RootObj

### RepeatEosU4 ###
proc read*(_: typedesc[RepeatEosU4], io: KaitaiStream, root: RepeatEosU4, parent: ref RootObj): RepeatEosU4 =
  let this = new(RepeatEosU4)
  let root = if root == nil: cast[RepeatEosU4](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.numbers = newSeq[uint32]()
  block:
    var i: int
    while not this.io.eof:
      this.numbers.add(this.io.readU4le())
      inc i
  result = this

proc fromFile*(_: typedesc[RepeatEosU4], filename: string): RepeatEosU4 =
  RepeatEosU4.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatEosU4Obj) =
  close(x.io)

