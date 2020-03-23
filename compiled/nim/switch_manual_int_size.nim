import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualIntSizechunkchunkMeta* = ref SwitchManualIntSizechunkchunkMetaObj
  SwitchManualIntSizechunkchunkMetaObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSize
    parent*: ref RootObj
  SwitchManualIntSizechunkchunkDir* = ref SwitchManualIntSizechunkchunkDirObj
  SwitchManualIntSizechunkchunkDirObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSize
    parent*: ref RootObj
  SwitchManualIntSizechunk* = ref SwitchManualIntSizechunkObj
  SwitchManualIntSizechunkObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSize
    parent*: ref RootObj
  SwitchManualIntSize* = ref SwitchManualIntSizeObj
  SwitchManualIntSizeObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSize
    parent*: ref RootObj

### SwitchManualIntSizechunkchunkMeta ###
proc read*(_: typedesc[SwitchManualIntSizechunkchunkMeta], io: KaitaiStream, root: SwitchManualIntSize, parent: SwitchManualIntSizechunk): SwitchManualIntSizechunkchunkMeta =
  result = new(SwitchManualIntSizechunkchunkMeta)
  let root = if root == nil: cast[SwitchManualIntSize](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.title = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  result.author = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[SwitchManualIntSizechunkchunkMeta], filename: string): SwitchManualIntSizechunkchunkMeta =
  SwitchManualIntSizechunkchunkMeta.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizechunkchunkMetaObj) =
  close(x.io)

### SwitchManualIntSizechunkchunkDir ###
proc read*(_: typedesc[SwitchManualIntSizechunkchunkDir], io: KaitaiStream, root: SwitchManualIntSize, parent: SwitchManualIntSizechunk): SwitchManualIntSizechunkchunkDir =
  result = new(SwitchManualIntSizechunkchunkDir)
  let root = if root == nil: cast[SwitchManualIntSize](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.entries = newSeq[string]()
  block:
    var i: int
    while not result.io.eof:
      result.entries.add(convert(result.io.readBytes(4), srcEncoding = "UTF-8"))
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizechunkchunkDir], filename: string): SwitchManualIntSizechunkchunkDir =
  SwitchManualIntSizechunkchunkDir.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizechunkchunkDirObj) =
  close(x.io)

### SwitchManualIntSizechunk ###
proc read*(_: typedesc[SwitchManualIntSizechunk], io: KaitaiStream, root: SwitchManualIntSize, parent: SwitchManualIntSize): SwitchManualIntSizechunk =
  result = new(SwitchManualIntSizechunk)
  let root = if root == nil: cast[SwitchManualIntSize](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = result.io.readU1()
  result.size = result.io.readU4le()
  result.rawBody = result.io.readBytes(size)
  rawBodyIo = newKaitaiStringStream(rawBody)
  result.body = ChunkMeta.read(rawBodyIo, result, root)
  result.rawBody = result.io.readBytes(size)
  rawBodyIo = newKaitaiStringStream(rawBody)
  result.body = ChunkDir.read(rawBodyIo, result, root)
  result.body = result.io.readBytes(size)

proc fromFile*(_: typedesc[SwitchManualIntSizechunk], filename: string): SwitchManualIntSizechunk =
  SwitchManualIntSizechunk.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizechunkObj) =
  close(x.io)

### SwitchManualIntSize ###
proc read*(_: typedesc[SwitchManualIntSize], io: KaitaiStream, root: SwitchManualIntSize, parent: ref RootObj): SwitchManualIntSize =
  result = new(SwitchManualIntSize)
  let root = if root == nil: cast[SwitchManualIntSize](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.chunks = newSeq[Chunk]()
  block:
    var i: int
    while not result.io.eof:
      result.chunks.add(Chunk.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSize], filename: string): SwitchManualIntSize =
  SwitchManualIntSize.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeObj) =
  close(x.io)

