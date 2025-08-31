import kaitai_struct_nim_runtime
import options

type
  BytesPadTermEqual* = ref object of KaitaiStruct
    `s1`*: seq[byte]
    `s2`*: seq[byte]
    `s3`*: seq[byte]
    `s4`*: seq[byte]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BytesPadTermEqual], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesPadTermEqual


proc read*(_: typedesc[BytesPadTermEqual], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesPadTermEqual =
  template this: untyped = result
  this = new(BytesPadTermEqual)
  let root = if root == nil: cast[BytesPadTermEqual](this) else: cast[BytesPadTermEqual](root)
  this.io = io
  this.root = root
  this.parent = parent

  let s1Expr = this.io.readBytes(int(20)).bytesStripRight(64).bytesTerminate(64, false)
  this.s1 = s1Expr
  let s2Expr = this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, true)
  this.s2 = s2Expr
  let s3Expr = this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(43, false)
  this.s3 = s3Expr
  let s4Expr = this.io.readBytes(int(20)).bytesStripRight(46).bytesTerminate(46, true)
  this.s4 = s4Expr

proc fromFile*(_: typedesc[BytesPadTermEqual], filename: string): BytesPadTermEqual =
  BytesPadTermEqual.read(newKaitaiFileStream(filename), nil, nil)

