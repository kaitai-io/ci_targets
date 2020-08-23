import kaitai_struct_nim_runtime
import options

type
  SwitchManualIntSize* = ref object of KaitaiStruct
    `chunks`*: seq[SwitchManualIntSize_Chunk]
    `parent`*: KaitaiStruct
  SwitchManualIntSize_Chunk* = ref object of KaitaiStruct
    `code`*: uint8
    `size`*: uint32
    `body`*: KaitaiStruct
    `parent`*: SwitchManualIntSize
    `rawBody`*: seq[byte]
  SwitchManualIntSize_Chunk_ChunkMeta* = ref object of KaitaiStruct
    `title`*: string
    `author`*: string
    `parent`*: SwitchManualIntSize_Chunk
  SwitchManualIntSize_Chunk_ChunkDir* = ref object of KaitaiStruct
    `entries`*: seq[string]
    `parent`*: SwitchManualIntSize_Chunk

proc read*(_: typedesc[SwitchManualIntSize], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualIntSize
proc read*(_: typedesc[SwitchManualIntSize_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSize): SwitchManualIntSize_Chunk
proc read*(_: typedesc[SwitchManualIntSize_Chunk_ChunkMeta], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSize_Chunk): SwitchManualIntSize_Chunk_ChunkMeta
proc read*(_: typedesc[SwitchManualIntSize_Chunk_ChunkDir], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSize_Chunk): SwitchManualIntSize_Chunk_ChunkDir


proc read*(_: typedesc[SwitchManualIntSize], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualIntSize =
  template this: untyped = result
  this = new(SwitchManualIntSize)
  let root = if root == nil: cast[SwitchManualIntSize](this) else: cast[SwitchManualIntSize](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = SwitchManualIntSize_Chunk.read(this.io, this.root, this)
      this.chunks.add(it)
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSize], filename: string): SwitchManualIntSize =
  SwitchManualIntSize.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSize_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSize): SwitchManualIntSize_Chunk =
  template this: untyped = result
  this = new(SwitchManualIntSize_Chunk)
  let root = if root == nil: cast[SwitchManualIntSize](this) else: cast[SwitchManualIntSize](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readU1()
  this.code = codeExpr
  let sizeExpr = this.io.readU4le()
  this.size = sizeExpr
  block:
    let on = this.code
    if on == 17:
      let rawBodyExpr = this.io.readBytes(int(this.size))
      this.rawBody = rawBodyExpr
      let rawBodyIo = newKaitaiStream(rawBodyExpr)
      let bodyExpr = SwitchManualIntSize_Chunk_ChunkMeta.read(rawBodyIo, this.root, this)
      this.body = bodyExpr
    elif on == 34:
      let rawBodyExpr = this.io.readBytes(int(this.size))
      this.rawBody = rawBodyExpr
      let rawBodyIo = newKaitaiStream(rawBodyExpr)
      let bodyExpr = SwitchManualIntSize_Chunk_ChunkDir.read(rawBodyIo, this.root, this)
      this.body = bodyExpr
    else:
      let bodyExpr = this.io.readBytes(int(this.size))
      this.body = bodyExpr

proc fromFile*(_: typedesc[SwitchManualIntSize_Chunk], filename: string): SwitchManualIntSize_Chunk =
  SwitchManualIntSize_Chunk.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSize_Chunk_ChunkMeta], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSize_Chunk): SwitchManualIntSize_Chunk_ChunkMeta =
  template this: untyped = result
  this = new(SwitchManualIntSize_Chunk_ChunkMeta)
  let root = if root == nil: cast[SwitchManualIntSize](this) else: cast[SwitchManualIntSize](root)
  this.io = io
  this.root = root
  this.parent = parent

  let titleExpr = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
  this.title = titleExpr
  let authorExpr = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
  this.author = authorExpr

proc fromFile*(_: typedesc[SwitchManualIntSize_Chunk_ChunkMeta], filename: string): SwitchManualIntSize_Chunk_ChunkMeta =
  SwitchManualIntSize_Chunk_ChunkMeta.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSize_Chunk_ChunkDir], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSize_Chunk): SwitchManualIntSize_Chunk_ChunkDir =
  template this: untyped = result
  this = new(SwitchManualIntSize_Chunk_ChunkDir)
  let root = if root == nil: cast[SwitchManualIntSize](this) else: cast[SwitchManualIntSize](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = encode(this.io.readBytes(int(4)), "UTF-8")
      this.entries.add(it)
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSize_Chunk_ChunkDir], filename: string): SwitchManualIntSize_Chunk_ChunkDir =
  SwitchManualIntSize_Chunk_ChunkDir.read(newKaitaiFileStream(filename), nil, nil)

