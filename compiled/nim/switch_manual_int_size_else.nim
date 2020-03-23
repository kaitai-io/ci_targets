import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualIntSizeElsechunkchunkMeta* = ref SwitchManualIntSizeElsechunkchunkMetaObj
  SwitchManualIntSizeElsechunkchunkMetaObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSizeElse
    parent*: ref RootObj
  SwitchManualIntSizeElsechunkchunkDir* = ref SwitchManualIntSizeElsechunkchunkDirObj
  SwitchManualIntSizeElsechunkchunkDirObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSizeElse
    parent*: ref RootObj
  SwitchManualIntSizeElsechunkdummy* = ref SwitchManualIntSizeElsechunkdummyObj
  SwitchManualIntSizeElsechunkdummyObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSizeElse
    parent*: ref RootObj
  SwitchManualIntSizeElsechunk* = ref SwitchManualIntSizeElsechunkObj
  SwitchManualIntSizeElsechunkObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSizeElse
    parent*: ref RootObj
  SwitchManualIntSizeElse* = ref SwitchManualIntSizeElseObj
  SwitchManualIntSizeElseObj* = object
    chunks*: seq[Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSizeElse
    parent*: ref RootObj

### SwitchManualIntSizeElsechunkchunkMeta ###
proc read*(_: typedesc[SwitchManualIntSizeElsechunkchunkMeta], io: KaitaiStream, root: SwitchManualIntSizeElse, parent: SwitchManualIntSizeElsechunk): SwitchManualIntSizeElsechunkchunkMeta =
  result = new(SwitchManualIntSizeElsechunkchunkMeta)
  let root = if root == nil: cast[SwitchManualIntSizeElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.title = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  result.author = convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[SwitchManualIntSizeElsechunkchunkMeta], filename: string): SwitchManualIntSizeElsechunkchunkMeta =
  SwitchManualIntSizeElsechunkchunkMeta.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeElsechunkchunkMetaObj) =
  close(x.io)

### SwitchManualIntSizeElsechunkchunkDir ###
proc read*(_: typedesc[SwitchManualIntSizeElsechunkchunkDir], io: KaitaiStream, root: SwitchManualIntSizeElse, parent: SwitchManualIntSizeElsechunk): SwitchManualIntSizeElsechunkchunkDir =
  result = new(SwitchManualIntSizeElsechunkchunkDir)
  let root = if root == nil: cast[SwitchManualIntSizeElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.entries = newSeq[string]()
  block:
    var i: int
    while not result.io.eof:
      result.entries.add(convert(result.io.readBytes(4), srcEncoding = "UTF-8"))
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizeElsechunkchunkDir], filename: string): SwitchManualIntSizeElsechunkchunkDir =
  SwitchManualIntSizeElsechunkchunkDir.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeElsechunkchunkDirObj) =
  close(x.io)

### SwitchManualIntSizeElsechunkdummy ###
proc read*(_: typedesc[SwitchManualIntSizeElsechunkdummy], io: KaitaiStream, root: SwitchManualIntSizeElse, parent: SwitchManualIntSizeElsechunk): SwitchManualIntSizeElsechunkdummy =
  result = new(SwitchManualIntSizeElsechunkdummy)
  let root = if root == nil: cast[SwitchManualIntSizeElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rest = result.io.readBytesFull()

proc fromFile*(_: typedesc[SwitchManualIntSizeElsechunkdummy], filename: string): SwitchManualIntSizeElsechunkdummy =
  SwitchManualIntSizeElsechunkdummy.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeElsechunkdummyObj) =
  close(x.io)

### SwitchManualIntSizeElsechunk ###
proc read*(_: typedesc[SwitchManualIntSizeElsechunk], io: KaitaiStream, root: SwitchManualIntSizeElse, parent: SwitchManualIntSizeElse): SwitchManualIntSizeElsechunk =
  result = new(SwitchManualIntSizeElsechunk)
  let root = if root == nil: cast[SwitchManualIntSizeElse](result) else: root
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
  result.rawBody = result.io.readBytes(size)
  rawBodyIo = newKaitaiStringStream(rawBody)
  result.body = Dummy.read(rawBodyIo, result, root)

proc fromFile*(_: typedesc[SwitchManualIntSizeElsechunk], filename: string): SwitchManualIntSizeElsechunk =
  SwitchManualIntSizeElsechunk.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeElsechunkObj) =
  close(x.io)

### SwitchManualIntSizeElse ###
proc read*(_: typedesc[SwitchManualIntSizeElse], io: KaitaiStream, root: SwitchManualIntSizeElse, parent: ref RootObj): SwitchManualIntSizeElse =
  result = new(SwitchManualIntSizeElse)
  let root = if root == nil: cast[SwitchManualIntSizeElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.chunks = newSeq[Chunk]()
  block:
    var i: int
    while not result.io.eof:
      result.chunks.add(Chunk.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizeElse], filename: string): SwitchManualIntSizeElse =
  SwitchManualIntSizeElse.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeElseObj) =
  close(x.io)

