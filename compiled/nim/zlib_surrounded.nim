import kaitai_struct_nim_runtime
import options

type
  ZlibSurrounded_Inflated* = ref ZlibSurrounded_InflatedObj
  ZlibSurrounded_InflatedObj* = object
    inflated*: int32
    io*: KaitaiStream
    root*: ZlibSurrounded
    parent*: ZlibSurrounded
  ZlibSurrounded* = ref ZlibSurroundedObj
  ZlibSurroundedObj* = object
    pre*: string
    zlib*: ZlibSurrounded_Inflated
    post*: string
    io*: KaitaiStream
    root*: ZlibSurrounded
    parent*: ref RootObj
    rawZlib*: string
    rawRawZlib*: string

## ZlibSurrounded_Inflated
proc read*(_: typedesc[ZlibSurrounded_Inflated], io: KaitaiStream, root: ZlibSurrounded, parent: ZlibSurrounded): ZlibSurrounded_Inflated =
  let this = new(ZlibSurrounded_Inflated)
  let root = if root == nil: cast[ZlibSurrounded](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.inflated = this.io.readS4le()
  result = this

proc fromFile*(_: typedesc[ZlibSurrounded_Inflated], filename: string): ZlibSurrounded_Inflated =
  ZlibSurrounded_Inflated.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ZlibSurrounded_InflatedObj) =
  close(x.io)

## ZlibSurrounded
proc read*(_: typedesc[ZlibSurrounded], io: KaitaiStream, root: ZlibSurrounded, parent: ref RootObj): ZlibSurrounded =
  let this = new(ZlibSurrounded)
  let root = if root == nil: cast[ZlibSurrounded](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.pre = this.io.readBytes(int(4))
  this.rawRawZlib = this.io.readBytes(int(12))
  this.rawZlib = rawRawZlib.processZlib()
  let rawZlibIo = newKaitaiStringStream(this.rawZlib)
  this.zlib = ZlibSurrounded_Inflated.read(rawZlibIo, this.root, this)
  this.post = this.io.readBytes(int(4))
  result = this

proc fromFile*(_: typedesc[ZlibSurrounded], filename: string): ZlibSurrounded =
  ZlibSurrounded.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ZlibSurroundedObj) =
  close(x.io)

