import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessXorConst* = ref object of KaitaiStruct
    key*: uint8
    buf*: string
    parent*: KaitaiStruct
    rawBuf*: string

proc read*(_: typedesc[ProcessXorConst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXorConst

proc read*(_: typedesc[ProcessXorConst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXorConst =
  template this: untyped = result
  this = new(ProcessXorConst)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.key = this.io.readU1()
  this.rawBuf = this.io.readBytesFull()
  this.buf = rawBuf.processXor(255)

proc fromFile*(_: typedesc[ProcessXorConst], filename: string): ProcessXorConst =
  ProcessXorConst.read(newKaitaiFileStream(filename), nil, nil)

