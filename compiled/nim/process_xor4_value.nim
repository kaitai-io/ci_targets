import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessXor4Value* = ref object of KaitaiStruct
    key*: string
    buf*: string
    parent*: KaitaiStruct
    rawBuf*: string

proc read*(_: typedesc[ProcessXor4Value], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXor4Value

proc read*(_: typedesc[ProcessXor4Value], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXor4Value =
  template this: untyped = result
  this = new(ProcessXor4Value)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.key = this.io.readBytes(int(4))
  this.rawBuf = this.io.readBytesFull()
  this.buf = rawBuf.processXor(this.key)

proc fromFile*(_: typedesc[ProcessXor4Value], filename: string): ProcessXor4Value =
  ProcessXor4Value.read(newKaitaiFileStream(filename), nil, nil)

