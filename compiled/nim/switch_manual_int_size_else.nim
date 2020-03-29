import kaitai_struct_nim_runtime
import encodings

type
  SwitchManualIntSizeElse_Chunk_ChunkMeta* = ref SwitchManualIntSizeElse_Chunk_ChunkMetaObj
  SwitchManualIntSizeElse_Chunk_ChunkMetaObj* = object
    title*: string
    author*: string
    io*: KaitaiStream
    root*: SwitchManualIntSizeElse
    parent*: SwitchManualIntSizeElse_Chunk
  SwitchManualIntSizeElse_Chunk_ChunkDir* = ref SwitchManualIntSizeElse_Chunk_ChunkDirObj
  SwitchManualIntSizeElse_Chunk_ChunkDirObj* = object
    entries*: seq[string]
    io*: KaitaiStream
    root*: SwitchManualIntSizeElse
    parent*: SwitchManualIntSizeElse_Chunk
  SwitchManualIntSizeElse_Chunk_Dummy* = ref SwitchManualIntSizeElse_Chunk_DummyObj
  SwitchManualIntSizeElse_Chunk_DummyObj* = object
    rest*: string
    io*: KaitaiStream
    root*: SwitchManualIntSizeElse
    parent*: SwitchManualIntSizeElse_Chunk
  SwitchManualIntSizeElse_Chunk* = ref SwitchManualIntSizeElse_ChunkObj
  SwitchManualIntSizeElse_ChunkObj* = object
    code*: uint8
    size*: uint32
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchManualIntSizeElse
    parent*: SwitchManualIntSizeElse
    rawBody*: string
  SwitchManualIntSizeElse* = ref SwitchManualIntSizeElseObj
  SwitchManualIntSizeElseObj* = object
    chunks*: seq[SwitchManualIntSizeElse_Chunk]
    io*: KaitaiStream
    root*: SwitchManualIntSizeElse
    parent*: ref RootObj

### SwitchManualIntSizeElse_Chunk_ChunkMeta ###
proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkMeta], io: KaitaiStream, root: SwitchManualIntSizeElse, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_ChunkMeta =
  result = new(SwitchManualIntSizeElse_Chunk_ChunkMeta)
  let root = if root == nil: cast[SwitchManualIntSizeElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let title = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  result.title = title
  let author = convert(io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  result.author = author

proc fromFile*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkMeta], filename: string): SwitchManualIntSizeElse_Chunk_ChunkMeta =
  SwitchManualIntSizeElse_Chunk_ChunkMeta.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeElse_Chunk_ChunkMetaObj) =
  close(x.io)

### SwitchManualIntSizeElse_Chunk_ChunkDir ###
proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkDir], io: KaitaiStream, root: SwitchManualIntSizeElse, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_ChunkDir =
  result = new(SwitchManualIntSizeElse_Chunk_ChunkDir)
  let root = if root == nil: cast[SwitchManualIntSizeElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  entries = newSeq[string]()
  block:
    var i: int
    while not io.eof:
      entries.add(convert(io.readBytes(int(4)), srcEncoding = "UTF-8"))
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkDir], filename: string): SwitchManualIntSizeElse_Chunk_ChunkDir =
  SwitchManualIntSizeElse_Chunk_ChunkDir.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeElse_Chunk_ChunkDirObj) =
  close(x.io)

### SwitchManualIntSizeElse_Chunk_Dummy ###
proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_Dummy], io: KaitaiStream, root: SwitchManualIntSizeElse, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_Dummy =
  result = new(SwitchManualIntSizeElse_Chunk_Dummy)
  let root = if root == nil: cast[SwitchManualIntSizeElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let rest = io.readBytesFull()
  result.rest = rest

proc fromFile*(_: typedesc[SwitchManualIntSizeElse_Chunk_Dummy], filename: string): SwitchManualIntSizeElse_Chunk_Dummy =
  SwitchManualIntSizeElse_Chunk_Dummy.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeElse_Chunk_DummyObj) =
  close(x.io)

### SwitchManualIntSizeElse_Chunk ###
proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk], io: KaitaiStream, root: SwitchManualIntSizeElse, parent: SwitchManualIntSizeElse): SwitchManualIntSizeElse_Chunk =
  result = new(SwitchManualIntSizeElse_Chunk)
  let root = if root == nil: cast[SwitchManualIntSizeElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let code = io.readU1()
  result.code = code
  let size = io.readU4le()
  result.size = size
  let rawBody = io.readBytes(int(size))
  result.rawBody = rawBody
  let rawBodyIo = newKaitaiStringStream(rawBody)
  let body = SwitchManualIntSizeElse_Chunk_ChunkMeta.read(rawBodyIo, result, root)
  result.body = body
  let rawBody = io.readBytes(int(size))
  result.rawBody = rawBody
  let rawBodyIo = newKaitaiStringStream(rawBody)
  let body = SwitchManualIntSizeElse_Chunk_ChunkDir.read(rawBodyIo, result, root)
  result.body = body
  let rawBody = io.readBytes(int(size))
  result.rawBody = rawBody
  let rawBodyIo = newKaitaiStringStream(rawBody)
  let body = SwitchManualIntSizeElse_Chunk_Dummy.read(rawBodyIo, result, root)
  result.body = body

proc fromFile*(_: typedesc[SwitchManualIntSizeElse_Chunk], filename: string): SwitchManualIntSizeElse_Chunk =
  SwitchManualIntSizeElse_Chunk.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeElse_ChunkObj) =
  close(x.io)

### SwitchManualIntSizeElse ###
proc read*(_: typedesc[SwitchManualIntSizeElse], io: KaitaiStream, root: SwitchManualIntSizeElse, parent: ref RootObj): SwitchManualIntSizeElse =
  result = new(SwitchManualIntSizeElse)
  let root = if root == nil: cast[SwitchManualIntSizeElse](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  chunks = newSeq[SwitchManualIntSizeElse_Chunk]()
  block:
    var i: int
    while not io.eof:
      chunks.add(SwitchManualIntSizeElse_Chunk.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizeElse], filename: string): SwitchManualIntSizeElse =
  SwitchManualIntSizeElse.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntSizeElseObj) =
  close(x.io)

