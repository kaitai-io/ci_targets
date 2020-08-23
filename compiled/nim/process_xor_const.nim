import kaitai_struct_nim_runtime
import options

type
  ProcessXorConst* = ref object of KaitaiStruct
    `key`*: uint8
    `buf`*: seq[byte]
    `parent`*: KaitaiStruct
    `rawBuf`*: seq[byte]

proc read*(_: typedesc[ProcessXorConst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXorConst


proc read*(_: typedesc[ProcessXorConst], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessXorConst =
  template this: untyped = result
  this = new(ProcessXorConst)
  let root = if root == nil: cast[ProcessXorConst](this) else: cast[ProcessXorConst](root)
  this.io = io
  this.root = root
  this.parent = parent

  let keyExpr = this.io.readU1()
  this.key = keyExpr
  let rawBufExpr = this.io.readBytesFull()
  this.rawBuf = rawBufExpr
  let bufExpr = this.rawBuf.processXor(255)
  this.buf = bufExpr

proc fromFile*(_: typedesc[ProcessXorConst], filename: string): ProcessXorConst =
  ProcessXorConst.read(newKaitaiFileStream(filename), nil, nil)

