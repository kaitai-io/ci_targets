import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  SwitchManualIntSizeElse* = ref object of KaitaiStruct
    chunks*: seq[SwitchManualIntSizeElse_Chunk]
    parent*: KaitaiStruct
  SwitchManualIntSizeElse_Chunk* = ref object of KaitaiStruct
    code*: uint8
    size*: uint32
    body*: KaitaiStruct
    parent*: SwitchManualIntSizeElse
    rawBody*: string
  SwitchManualIntSizeElse_Chunk_ChunkMeta* = ref object of KaitaiStruct
    title*: string
    author*: string
    parent*: SwitchManualIntSizeElse_Chunk
  SwitchManualIntSizeElse_Chunk_ChunkDir* = ref object of KaitaiStruct
    entries*: seq[string]
    parent*: SwitchManualIntSizeElse_Chunk
  SwitchManualIntSizeElse_Chunk_Dummy* = ref object of KaitaiStruct
    rest*: string
    parent*: SwitchManualIntSizeElse_Chunk

proc read*(_: typedesc[SwitchManualIntSizeElse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualIntSizeElse
proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse): SwitchManualIntSizeElse_Chunk
proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkMeta], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_ChunkMeta
proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkDir], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_ChunkDir
proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_Dummy], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_Dummy


proc read*(_: typedesc[SwitchManualIntSizeElse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualIntSizeElse =
  template this: untyped = result
  this = new(SwitchManualIntSizeElse)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.chunks = newSeqOfCap[SwitchManualIntSizeElse_Chunk]()
  block:
    var i: int
    while not this.io.eof:
      this.chunks.add(SwitchManualIntSizeElse_Chunk.read(this.io, this.root, this))
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizeElse], filename: string): SwitchManualIntSizeElse =
  SwitchManualIntSizeElse.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse): SwitchManualIntSizeElse_Chunk =
  template this: untyped = result
  this = new(SwitchManualIntSizeElse_Chunk)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.code = this.io.readU1()
  this.size = this.io.readU4le()
  case this.code
  of 17:
    this.rawBody = this.io.readBytes(int(this.size))
    let rawBodyIo = newKaitaiStringStream(this.rawBody)
    this.body = SwitchManualIntSizeElse_Chunk_ChunkMeta.read(rawBodyIo, this.root, this)
  of 34:
    this.rawBody = this.io.readBytes(int(this.size))
    let rawBodyIo = newKaitaiStringStream(this.rawBody)
    this.body = SwitchManualIntSizeElse_Chunk_ChunkDir.read(rawBodyIo, this.root, this)
  else:
    this.rawBody = this.io.readBytes(int(this.size))
    let rawBodyIo = newKaitaiStringStream(this.rawBody)
    this.body = SwitchManualIntSizeElse_Chunk_Dummy.read(rawBodyIo, this.root, this)

proc fromFile*(_: typedesc[SwitchManualIntSizeElse_Chunk], filename: string): SwitchManualIntSizeElse_Chunk =
  SwitchManualIntSizeElse_Chunk.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkMeta], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_ChunkMeta =
  template this: untyped = result
  this = new(SwitchManualIntSizeElse_Chunk_ChunkMeta)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.title = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")
  this.author = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkMeta], filename: string): SwitchManualIntSizeElse_Chunk_ChunkMeta =
  SwitchManualIntSizeElse_Chunk_ChunkMeta.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkDir], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_ChunkDir =
  template this: untyped = result
  this = new(SwitchManualIntSizeElse_Chunk_ChunkDir)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.entries = newSeqOfCap[string]()
  block:
    var i: int
    while not this.io.eof:
      this.entries.add(convert(this.io.readBytes(int(4)), srcEncoding = "UTF-8"))
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkDir], filename: string): SwitchManualIntSizeElse_Chunk_ChunkDir =
  SwitchManualIntSizeElse_Chunk_ChunkDir.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_Dummy], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_Dummy =
  template this: untyped = result
  this = new(SwitchManualIntSizeElse_Chunk_Dummy)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.rest = this.io.readBytesFull()

proc fromFile*(_: typedesc[SwitchManualIntSizeElse_Chunk_Dummy], filename: string): SwitchManualIntSizeElse_Chunk_Dummy =
  SwitchManualIntSizeElse_Chunk_Dummy.read(newKaitaiFileStream(filename), nil, nil)

