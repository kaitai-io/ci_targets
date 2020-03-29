import kaitai_struct_nim_runtime

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

### ZlibSurrounded_Inflated ###
proc read*(_: typedesc[ZlibSurrounded_Inflated], io: KaitaiStream, root: ZlibSurrounded, parent: ZlibSurrounded): ZlibSurrounded_Inflated =
  result = new(ZlibSurrounded_Inflated)
  let root = if root == nil: cast[ZlibSurrounded](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let inflated = io.readS4le()
  result.inflated = inflated

proc fromFile*(_: typedesc[ZlibSurrounded_Inflated], filename: string): ZlibSurrounded_Inflated =
  ZlibSurrounded_Inflated.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ZlibSurrounded_InflatedObj) =
  close(x.io)

### ZlibSurrounded ###
proc read*(_: typedesc[ZlibSurrounded], io: KaitaiStream, root: ZlibSurrounded, parent: ref RootObj): ZlibSurrounded =
  result = new(ZlibSurrounded)
  let root = if root == nil: cast[ZlibSurrounded](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let pre = io.readBytes(int(4))
  result.pre = pre
  let rawRawZlib = io.readBytes(int(12))
  result.rawRawZlib = rawRawZlib
  let rawZlib = rawRawZlib.processZlib()
  result.rawZlib = rawZlib
  let rawZlibIo = newKaitaiStringStream(rawZlib)
  let zlib = ZlibSurrounded_Inflated.read(rawZlibIo, result, root)
  result.zlib = zlib
  let post = io.readBytes(int(4))
  result.post = post

proc fromFile*(_: typedesc[ZlibSurrounded], filename: string): ZlibSurrounded =
  ZlibSurrounded.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ZlibSurroundedObj) =
  close(x.io)

