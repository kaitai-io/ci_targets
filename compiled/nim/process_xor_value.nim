import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessXorValue* = ref object of KaitaiStruct
    key*: uint8
    buf*: seq[byte]
    parent*: KaitaiStruct
    rawBuf*: seq[byte]

proc read*(_: typedesc[ProcessXorValue], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXorValue


proc read*(_: typedesc[ProcessXorValue], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXorValue =
  template this: untyped = result
  this = new(ProcessXorValue)
  let root = if root == nil: cast[ProcessXorValue](this) else: cast[ProcessXorValue](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.key = this.io.readU1()
  this.rawBuf = this.io.readBytesFull()
  this.buf = this.rawBuf.processXor(this.key)

proc fromFile*(_: typedesc[ProcessXorValue], filename: string): ProcessXorValue =
  ProcessXorValue.read(newKaitaiFileStream(filename), nil, nil)

