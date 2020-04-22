import kaitai_struct_nim_runtime
import options

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

  let keyExpr = this.io.readBytes(int(4))
  this.key = keyExpr
  let rawBufExpr = this.io.readBytesFull()
  this.rawBuf = rawBufExpr
  let bufExpr = this.rawBuf.processXor(this.key)
  this.buf = bufExpr

proc fromFile*(_: typedesc[ProcessXor4Value], filename: string): ProcessXor4Value =
  ProcessXor4Value.read(newKaitaiFileStream(filename), nil, nil)

