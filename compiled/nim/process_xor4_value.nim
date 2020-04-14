import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessXor4Value* = ref object of KaitaiStruct
    key*: seq[byte]
    buf*: seq[byte]
    parent*: KaitaiStruct
    rawBuf*: seq[byte]

proc read*(_: typedesc[ProcessXor4Value], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXor4Value


proc read*(_: typedesc[ProcessXor4Value], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXor4Value =
  template this: untyped = result
  this = new(ProcessXor4Value)
  let root = if root == nil: cast[ProcessXor4Value](this) else: cast[ProcessXor4Value](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.key = this.io.readBytes(int(4))
  this.rawBuf = this.io.readBytesFull()
  this.buf = this.rawBuf.processXor(this.key)

proc fromFile*(_: typedesc[ProcessXor4Value], filename: string): ProcessXor4Value =
  ProcessXor4Value.read(newKaitaiFileStream(filename), nil, nil)

