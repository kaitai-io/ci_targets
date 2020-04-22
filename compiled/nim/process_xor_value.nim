import kaitai_struct_nim_runtime
import options

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

  let keyExpr = this.io.readU1()
  this.key = keyExpr
  let rawBufExpr = this.io.readBytesFull()
  this.rawBuf = rawBufExpr
  let bufExpr = this.rawBuf.processXor(this.key)
  this.buf = bufExpr

proc fromFile*(_: typedesc[ProcessXorValue], filename: string): ProcessXorValue =
  ProcessXorValue.read(newKaitaiFileStream(filename), nil, nil)

