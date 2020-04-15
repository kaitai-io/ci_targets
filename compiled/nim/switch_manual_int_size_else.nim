import kaitai_struct_nim_runtime
import options

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
    rawBody*: seq[byte]
  SwitchManualIntSizeElse_Chunk_ChunkMeta* = ref object of KaitaiStruct
    title*: string
    author*: string
    parent*: SwitchManualIntSizeElse_Chunk
  SwitchManualIntSizeElse_Chunk_ChunkDir* = ref object of KaitaiStruct
    entries*: seq[string]
    parent*: SwitchManualIntSizeElse_Chunk
  SwitchManualIntSizeElse_Chunk_Dummy* = ref object of KaitaiStruct
    rest*: seq[byte]
    parent*: SwitchManualIntSizeElse_Chunk

proc read*(_: typedesc[SwitchManualIntSizeElse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualIntSizeElse
proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse): SwitchManualIntSizeElse_Chunk
proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkMeta], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_ChunkMeta
proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkDir], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_ChunkDir
proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_Dummy], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_Dummy


proc read*(_: typedesc[SwitchManualIntSizeElse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualIntSizeElse =
  template this: untyped = result
  this = new(SwitchManualIntSizeElse)
  let root = if root == nil: cast[SwitchManualIntSizeElse](this) else: cast[SwitchManualIntSizeElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let chunksExpr = SwitchManualIntSizeElse_Chunk.read(this.io, this.root, this)
      this.chunks.add(chunksExpr)
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizeElse], filename: string): SwitchManualIntSizeElse =
  SwitchManualIntSizeElse.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse): SwitchManualIntSizeElse_Chunk =
  template this: untyped = result
  this = new(SwitchManualIntSizeElse_Chunk)
  let root = if root == nil: cast[SwitchManualIntSizeElse](this) else: cast[SwitchManualIntSizeElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readU1()
  this.code = codeExpr
  let sizeExpr = this.io.readU4le()
  this.size = sizeExpr
  case ord(this.code)
  of 17:
    let rawBodyExpr = this.io.readBytes(int(this.size))
    this.rawBody = rawBodyExpr
    let rawBodyIo = newKaitaiStream(rawBodyExpr)
    let bodyExpr = SwitchManualIntSizeElse_Chunk_ChunkMeta.read(rawBodyIo, this.root, this)
    this.body = bodyExpr
  of 34:
    let rawBodyExpr = this.io.readBytes(int(this.size))
    this.rawBody = rawBodyExpr
    let rawBodyIo = newKaitaiStream(rawBodyExpr)
    let bodyExpr = SwitchManualIntSizeElse_Chunk_ChunkDir.read(rawBodyIo, this.root, this)
    this.body = bodyExpr
  else:
    let rawBodyExpr = this.io.readBytes(int(this.size))
    this.rawBody = rawBodyExpr
    let rawBodyIo = newKaitaiStream(rawBodyExpr)
    let bodyExpr = SwitchManualIntSizeElse_Chunk_Dummy.read(rawBodyIo, this.root, this)
    this.body = bodyExpr

proc fromFile*(_: typedesc[SwitchManualIntSizeElse_Chunk], filename: string): SwitchManualIntSizeElse_Chunk =
  SwitchManualIntSizeElse_Chunk.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkMeta], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_ChunkMeta =
  template this: untyped = result
  this = new(SwitchManualIntSizeElse_Chunk_ChunkMeta)
  let root = if root == nil: cast[SwitchManualIntSizeElse](this) else: cast[SwitchManualIntSizeElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let titleExpr = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
  this.title = titleExpr
  let authorExpr = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
  this.author = authorExpr

proc fromFile*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkMeta], filename: string): SwitchManualIntSizeElse_Chunk_ChunkMeta =
  SwitchManualIntSizeElse_Chunk_ChunkMeta.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkDir], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_ChunkDir =
  template this: untyped = result
  this = new(SwitchManualIntSizeElse_Chunk_ChunkDir)
  let root = if root == nil: cast[SwitchManualIntSizeElse](this) else: cast[SwitchManualIntSizeElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let entriesExpr = encode(this.io.readBytes(int(4)), "UTF-8")
      this.entries.add(entriesExpr)
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizeElse_Chunk_ChunkDir], filename: string): SwitchManualIntSizeElse_Chunk_ChunkDir =
  SwitchManualIntSizeElse_Chunk_ChunkDir.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSizeElse_Chunk_Dummy], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeElse_Chunk): SwitchManualIntSizeElse_Chunk_Dummy =
  template this: untyped = result
  this = new(SwitchManualIntSizeElse_Chunk_Dummy)
  let root = if root == nil: cast[SwitchManualIntSizeElse](this) else: cast[SwitchManualIntSizeElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let restExpr = this.io.readBytesFull()
  this.rest = restExpr

proc fromFile*(_: typedesc[SwitchManualIntSizeElse_Chunk_Dummy], filename: string): SwitchManualIntSizeElse_Chunk_Dummy =
  SwitchManualIntSizeElse_Chunk_Dummy.read(newKaitaiFileStream(filename), nil, nil)

