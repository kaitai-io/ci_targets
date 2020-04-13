import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessRepeatBytes* = ref object of KaitaiStruct
    bufs*: seq[string]
    parent*: KaitaiStruct
    rawBufs*: seq[string]

proc read*(_: typedesc[ProcessRepeatBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatBytes


proc read*(_: typedesc[ProcessRepeatBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatBytes =
  template this: untyped = result
  this = new(ProcessRepeatBytes)
  let root = if root == nil: cast[ProcessRepeatBytes](this) else: cast[ProcessRepeatBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBufs = newSeq[string](2)
  for i in 0 ..< 2:
    this.rawBufs.add(this.io.readBytes(int(5)))
    this.bufs.add(this.rawBufs.processXor(158))

proc fromFile*(_: typedesc[ProcessRepeatBytes], filename: string): ProcessRepeatBytes =
  ProcessRepeatBytes.read(newKaitaiFileStream(filename), nil, nil)

