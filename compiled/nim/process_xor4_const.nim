import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessXor4Const* = ref object of KaitaiStruct
    key*: seq[byte]
    buf*: seq[byte]
    parent*: KaitaiStruct
    rawBuf*: seq[byte]

proc read*(_: typedesc[ProcessXor4Const], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXor4Const


proc read*(_: typedesc[ProcessXor4Const], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXor4Const =
  template this: untyped = result
  this = new(ProcessXor4Const)
  let root = if root == nil: cast[ProcessXor4Const](this) else: cast[ProcessXor4Const](root)
  this.io = io
  this.root = root
  this.parent = parent

  let keyExpr = this.io.readBytes(int(4))
  this.key = keyExpr
  let rawBufExpr = this.io.readBytesFull()
  this.rawBuf = rawBufExpr
  let bufExpr = this.rawBuf.processXor(@[-20'u8, -69'u8, -93'u8, 20'u8])
  this.buf = bufExpr

proc fromFile*(_: typedesc[ProcessXor4Const], filename: string): ProcessXor4Const =
  ProcessXor4Const.read(newKaitaiFileStream(filename), nil, nil)

