import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessXor4Const* = ref object of KaitaiStruct
    key*: string
    buf*: string
    parent*: KaitaiStruct
    rawBuf*: string

proc read*(_: typedesc[ProcessXor4Const], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXor4Const

proc read*(_: typedesc[ProcessXor4Const], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXor4Const =
  template this: untyped = result
  this = new(ProcessXor4Const)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.key = this.io.readBytes(int(4))
  this.rawBuf = this.io.readBytesFull()
  this.buf = rawBuf.processXor(@[-20'i8, -69, -93, 20].toString)

proc fromFile*(_: typedesc[ProcessXor4Const], filename: string): ProcessXor4Const =
  ProcessXor4Const.read(newKaitaiFileStream(filename), nil, nil)

