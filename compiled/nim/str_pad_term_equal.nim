import kaitai_struct_nim_runtime
import options

type
  StrPadTermEqual* = ref object of KaitaiStruct
    `s1`*: string
    `s2`*: string
    `s3`*: string
    `s4`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[StrPadTermEqual], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTermEqual


proc read*(_: typedesc[StrPadTermEqual], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTermEqual =
  template this: untyped = result
  this = new(StrPadTermEqual)
  let root = if root == nil: cast[StrPadTermEqual](this) else: cast[StrPadTermEqual](root)
  this.io = io
  this.root = root
  this.parent = parent

  let s1Expr = encode(this.io.readBytes(int(20)).bytesStripRight(64).bytesTerminate(64, false), "UTF-8")
  this.s1 = s1Expr
  let s2Expr = encode(this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, true), "UTF-8")
  this.s2 = s2Expr
  let s3Expr = encode(this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(43, false), "UTF-8")
  this.s3 = s3Expr
  let s4Expr = encode(this.io.readBytes(int(20)).bytesStripRight(46).bytesTerminate(46, true), "UTF-8")
  this.s4 = s4Expr

proc fromFile*(_: typedesc[StrPadTermEqual], filename: string): StrPadTermEqual =
  StrPadTermEqual.read(newKaitaiFileStream(filename), nil, nil)

