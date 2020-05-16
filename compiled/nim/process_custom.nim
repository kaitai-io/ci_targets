import kaitai_struct_nim_runtime
import options
import my_custom_fx
import nested

type
  ProcessCustom* = ref object of KaitaiStruct
    buf1*: seq[byte]
    buf2*: seq[byte]
    key*: uint8
    buf3*: seq[byte]
    parent*: KaitaiStruct
    rawBuf1*: seq[byte]
    rawBuf2*: seq[byte]
    rawBuf3*: seq[byte]

proc read*(_: typedesc[ProcessCustom], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCustom


proc read*(_: typedesc[ProcessCustom], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCustom =
  template this: untyped = result
  this = new(ProcessCustom)
  let root = if root == nil: cast[ProcessCustom](this) else: cast[ProcessCustom](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawBuf1Expr = this.io.readBytes(int(5))
  this.rawBuf1 = rawBuf1Expr
  let buf1Expr = my_custom_fx(this.rawBuf1, 7, true, @[32'u8, 48'u8, 64'u8])
  this.buf1 = buf1Expr
  let rawBuf2Expr = this.io.readBytes(int(5))
  this.rawBuf2 = rawBuf2Expr
  let buf2Expr = nested.deeply.custom_fx(this.rawBuf2, 7)
  this.buf2 = buf2Expr
  let keyExpr = this.io.readU1()
  this.key = keyExpr
  let rawBuf3Expr = this.io.readBytes(int(5))
  this.rawBuf3 = rawBuf3Expr
  let buf3Expr = my_custom_fx(this.rawBuf3, this.key, false, @[0'u8])
  this.buf3 = buf3Expr

proc fromFile*(_: typedesc[ProcessCustom], filename: string): ProcessCustom =
  ProcessCustom.read(newKaitaiFileStream(filename), nil, nil)

