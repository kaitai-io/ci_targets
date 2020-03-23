import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualIntSizeEoschunk* = ref SwitchManualIntSizeEoschunkObj
  SwitchManualIntSizeEoschunkObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSizeEos
    parent*: ref RootObj
  SwitchManualIntSizeEoschunkBodychunkMeta* = ref SwitchManualIntSizeEoschunkBodychunkMetaObj
  SwitchManualIntSizeEoschunkBodychunkMetaObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSizeEos
    parent*: ref RootObj
  SwitchManualIntSizeEoschunkBodychunkDir* = ref SwitchManualIntSizeEoschunkBodychunkDirObj
  SwitchManualIntSizeEoschunkBodychunkDirObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSizeEos
    parent*: ref RootObj
  SwitchManualIntSizeEoschunkBody* = ref SwitchManualIntSizeEoschunkBodyObj
  SwitchManualIntSizeEoschunkBodyObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSizeEos
    parent*: ref RootObj
  SwitchManualIntSizeEos* = ref SwitchManualIntSizeEosObj
  SwitchManualIntSizeEosObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSizeEos
    parent*: ref RootObj

### SwitchManualIntSizeEoschunk ###
proc read*(_: typedesc[SwitchManualIntSizeEoschunk], io: KaitaiStream, root: SwitchManualIntSizeEos, parent: SwitchManualIntSizeEos): SwitchManualIntSizeEoschunk =
  result = new(SwitchManualIntSizeEoschunk)
  let root = if root == nil: cast[SwitchManualIntSizeEos](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = result.io.readU1()
  result.size = result.io.readU4le()
  result.rawBody = result.io.readBytes(size)
  rawBodyIo = newKaitaiStringStream(rawBody)
  result.body = ChunkBody.read(rawBodyIo, result, root)

proc fromFile*(_: typedesc[SwitchManualIntSizeEoschunk], filename: string): SwitchManualIntSizeEoschunk =
  SwitchManualIntSizeEoschunk.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeEoschunkObj) =
  close(x.io)

### SwitchManualIntSizeEoschunkBodychunkMeta ###
proc read*(_: typedesc[SwitchManualIntSizeEoschunkBodychunkMeta], io: KaitaiStream, root: SwitchManualIntSizeEos, parent: SwitchManualIntSizeEoschunkBody): SwitchManualIntSizeEoschunkBodychunkMeta =
  result = new(SwitchManualIntSizeEoschunkBodychunkMeta)
  let root = if root == nil: cast[SwitchManualIntSizeEos](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.title = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  result.author = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[SwitchManualIntSizeEoschunkBodychunkMeta], filename: string): SwitchManualIntSizeEoschunkBodychunkMeta =
  SwitchManualIntSizeEoschunkBodychunkMeta.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeEoschunkBodychunkMetaObj) =
  close(x.io)

### SwitchManualIntSizeEoschunkBodychunkDir ###
proc read*(_: typedesc[SwitchManualIntSizeEoschunkBodychunkDir], io: KaitaiStream, root: SwitchManualIntSizeEos, parent: SwitchManualIntSizeEoschunkBody): SwitchManualIntSizeEoschunkBodychunkDir =
  result = new(SwitchManualIntSizeEoschunkBodychunkDir)
  let root = if root == nil: cast[SwitchManualIntSizeEos](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.entries = newSeq[string]()
  block:
    var i: int
    while not result.io.eof:
      result.entries.add(convert(result.io.readBytes(4), srcEncoding = "UTF-8"))
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizeEoschunkBodychunkDir], filename: string): SwitchManualIntSizeEoschunkBodychunkDir =
  SwitchManualIntSizeEoschunkBodychunkDir.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeEoschunkBodychunkDirObj) =
  close(x.io)

### SwitchManualIntSizeEoschunkBody ###
proc read*(_: typedesc[SwitchManualIntSizeEoschunkBody], io: KaitaiStream, root: SwitchManualIntSizeEos, parent: SwitchManualIntSizeEoschunk): SwitchManualIntSizeEoschunkBody =
  result = new(SwitchManualIntSizeEoschunkBody)
  let root = if root == nil: cast[SwitchManualIntSizeEos](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rawBody = result.io.readBytesFull()
  rawBodyIo = newKaitaiStringStream(rawBody)
  result.body = ChunkMeta.read(rawBodyIo, result, root)
  result.rawBody = result.io.readBytesFull()
  rawBodyIo = newKaitaiStringStream(rawBody)
  result.body = ChunkDir.read(rawBodyIo, result, root)
  result.body = result.io.readBytesFull()

proc fromFile*(_: typedesc[SwitchManualIntSizeEoschunkBody], filename: string): SwitchManualIntSizeEoschunkBody =
  SwitchManualIntSizeEoschunkBody.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeEoschunkBodyObj) =
  close(x.io)

### SwitchManualIntSizeEos ###
proc read*(_: typedesc[SwitchManualIntSizeEos], io: KaitaiStream, root: SwitchManualIntSizeEos, parent: ref RootObj): SwitchManualIntSizeEos =
  result = new(SwitchManualIntSizeEos)
  let root = if root == nil: cast[SwitchManualIntSizeEos](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.chunks = newSeq[Chunk]()
  block:
    var i: int
    while not result.io.eof:
      result.chunks.add(Chunk.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizeEos], filename: string): SwitchManualIntSizeEos =
  SwitchManualIntSizeEos.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeEosObj) =
  close(x.io)

