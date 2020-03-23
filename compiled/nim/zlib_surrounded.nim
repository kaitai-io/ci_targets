import kaitai_struct_nim_runtime

type
  ZlibSurroundedinflated* = ref ZlibSurroundedinflatedObj
  ZlibSurroundedinflatedObj* = object
    pre*: string
    zlib*: Inflated
    post*: string
    io*: KaitaiStream
    root*: ZlibSurrounded
    parent*: ref RootObj
    rawZlib*: string
    rawRawZlib*: string
  ZlibSurrounded* = ref ZlibSurroundedObj
  ZlibSurroundedObj* = object
    pre*: string
    zlib*: Inflated
    post*: string
    io*: KaitaiStream
    root*: ZlibSurrounded
    parent*: ref RootObj
    rawZlib*: string
    rawRawZlib*: string

### ZlibSurroundedinflated ###
proc read*(_: typedesc[ZlibSurroundedinflated], io: KaitaiStream, root: ZlibSurrounded, parent: ZlibSurrounded): ZlibSurroundedinflated =
  result = new(ZlibSurroundedinflated)
  let root = if root == nil: cast[ZlibSurrounded](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.inflated = result.io.readS4le()

proc fromFile*(_: typedesc[ZlibSurroundedinflated], filename: string): ZlibSurroundedinflated =
  ZlibSurroundedinflated.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ZlibSurroundedinflatedObj) =
  close(x.io)

### ZlibSurrounded ###
proc read*(_: typedesc[ZlibSurrounded], io: KaitaiStream, root: ZlibSurrounded, parent: ref RootObj): ZlibSurrounded =
  result = new(ZlibSurrounded)
  let root = if root == nil: cast[ZlibSurrounded](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.pre = result.io.readBytes(4)
  result.rawRawZlib = result.io.readBytes(12)
  result.rawZlib = rawRawZlib.processZlib()
  rawZlibIo = newKaitaiStringStream(rawZlib)
  result.zlib = Inflated.read(rawZlibIo, result, root)
  result.post = result.io.readBytes(4)

proc fromFile*(_: typedesc[ZlibSurrounded], filename: string): ZlibSurrounded =
  ZlibSurrounded.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ZlibSurroundedObj) =
  close(x.io)

