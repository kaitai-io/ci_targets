import kaitai_struct_nim_runtime
import options

type
  ZlibSurrounded* = ref object of KaitaiStruct
    `pre`*: seq[byte]
    `zlib`*: ZlibSurrounded_Inflated
    `post`*: seq[byte]
    `parent`*: KaitaiStruct
    `rawZlib`*: seq[byte]
    `rawRawZlib`*: seq[byte]
  ZlibSurrounded_Inflated* = ref object of KaitaiStruct
    `num`*: int32
    `parent`*: ZlibSurrounded

proc read*(_: typedesc[ZlibSurrounded], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ZlibSurrounded
proc read*(_: typedesc[ZlibSurrounded_Inflated], io: KaitaiStream, root: KaitaiStruct, parent: ZlibSurrounded): ZlibSurrounded_Inflated


proc read*(_: typedesc[ZlibSurrounded], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ZlibSurrounded =
  template this: untyped = result
  this = new(ZlibSurrounded)
  let root = if root == nil: cast[ZlibSurrounded](this) else: cast[ZlibSurrounded](root)
  this.io = io
  this.root = root
  this.parent = parent

  let preExpr = this.io.readBytes(int(4))
  this.pre = preExpr
  let rawRawZlibExpr = this.io.readBytes(int(12))
  this.rawRawZlib = rawRawZlibExpr
  let rawZlibExpr = this.rawRawZlib.processZlib()
  this.rawZlib = rawZlibExpr
  let rawZlibIo = newKaitaiStream(rawZlibExpr)
  let zlibExpr = ZlibSurrounded_Inflated.read(rawZlibIo, this.root, this)
  this.zlib = zlibExpr
  let postExpr = this.io.readBytes(int(4))
  this.post = postExpr

proc fromFile*(_: typedesc[ZlibSurrounded], filename: string): ZlibSurrounded =
  ZlibSurrounded.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ZlibSurrounded_Inflated], io: KaitaiStream, root: KaitaiStruct, parent: ZlibSurrounded): ZlibSurrounded_Inflated =
  template this: untyped = result
  this = new(ZlibSurrounded_Inflated)
  let root = if root == nil: cast[ZlibSurrounded](this) else: cast[ZlibSurrounded](root)
  this.io = io
  this.root = root
  this.parent = parent

  let numExpr = this.io.readS4le()
  this.num = numExpr

proc fromFile*(_: typedesc[ZlibSurrounded_Inflated], filename: string): ZlibSurrounded_Inflated =
  ZlibSurrounded_Inflated.read(newKaitaiFileStream(filename), nil, nil)

