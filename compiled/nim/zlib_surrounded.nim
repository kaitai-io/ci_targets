import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ZlibSurrounded* = ref object of KaitaiStruct
    pre*: string
    zlib*: ZlibSurrounded_Inflated
    post*: string
    parent*: KaitaiStruct
    rawZlib*: string
    rawRawZlib*: string
  ZlibSurrounded_Inflated* = ref object of KaitaiStruct
    inflated*: int32
    parent*: ZlibSurrounded

proc read*(_: typedesc[ZlibSurrounded], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ZlibSurrounded
proc read*(_: typedesc[ZlibSurrounded_Inflated], io: KaitaiStream, root: KaitaiStruct, parent: ZlibSurrounded): ZlibSurrounded_Inflated


proc read*(_: typedesc[ZlibSurrounded], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ZlibSurrounded =
  template this: untyped = result
  this = new(ZlibSurrounded)
  let root = if root == nil: cast[ZlibSurrounded](this) else: cast[ZlibSurrounded](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.pre = this.io.readBytes(int(4))
  this.rawRawZlib = this.io.readBytes(int(12))
  this.rawZlib = this.rawRawZlib.processZlib()
  let rawZlibIo = newKaitaiStringStream(this.rawZlib)
  this.zlib = ZlibSurrounded_Inflated.read(rawZlibIo, this.root, this)
  this.post = this.io.readBytes(int(4))

proc fromFile*(_: typedesc[ZlibSurrounded], filename: string): ZlibSurrounded =
  ZlibSurrounded.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ZlibSurrounded_Inflated], io: KaitaiStream, root: KaitaiStruct, parent: ZlibSurrounded): ZlibSurrounded_Inflated =
  template this: untyped = result
  this = new(ZlibSurrounded_Inflated)
  let root = if root == nil: cast[ZlibSurrounded](this) else: cast[ZlibSurrounded](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.inflated = this.io.readS4le()

proc fromFile*(_: typedesc[ZlibSurrounded_Inflated], filename: string): ZlibSurrounded_Inflated =
  ZlibSurrounded_Inflated.read(newKaitaiFileStream(filename), nil, nil)

