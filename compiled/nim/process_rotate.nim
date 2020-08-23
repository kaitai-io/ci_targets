import kaitai_struct_nim_runtime
import options

type
  ProcessRotate* = ref object of KaitaiStruct
    `buf1`*: seq[byte]
    `buf2`*: seq[byte]
    `key`*: uint8
    `buf3`*: seq[byte]
    `parent`*: KaitaiStruct
    `rawBuf1`*: seq[byte]
    `rawBuf2`*: seq[byte]
    `rawBuf3`*: seq[byte]

proc read*(_: typedesc[ProcessRotate], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRotate


proc read*(_: typedesc[ProcessRotate], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRotate =
  template this: untyped = result
  this = new(ProcessRotate)
  let root = if root == nil: cast[ProcessRotate](this) else: cast[ProcessRotate](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawBuf1Expr = this.io.readBytes(int(5))
  this.rawBuf1 = rawBuf1Expr
  let buf1Expr = this.rawBuf1.processRotateLeft(int(3))
  this.buf1 = buf1Expr
  let rawBuf2Expr = this.io.readBytes(int(5))
  this.rawBuf2 = rawBuf2Expr
  let buf2Expr = this.rawBuf2.processRotateLeft(int(8 - (3)))
  this.buf2 = buf2Expr
  let keyExpr = this.io.readU1()
  this.key = keyExpr
  let rawBuf3Expr = this.io.readBytes(int(5))
  this.rawBuf3 = rawBuf3Expr
  let buf3Expr = this.rawBuf3.processRotateLeft(int(this.key))
  this.buf3 = buf3Expr

proc fromFile*(_: typedesc[ProcessRotate], filename: string): ProcessRotate =
  ProcessRotate.read(newKaitaiFileStream(filename), nil, nil)

