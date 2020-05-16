import kaitai_struct_nim_runtime
import options

type
  SwitchManualIntSizeEos* = ref object of KaitaiStruct
    chunks*: seq[SwitchManualIntSizeEos_Chunk]
    parent*: KaitaiStruct
  SwitchManualIntSizeEos_Chunk* = ref object of KaitaiStruct
    code*: uint8
    size*: uint32
    body*: SwitchManualIntSizeEos_ChunkBody
    parent*: SwitchManualIntSizeEos
    rawBody*: seq[byte]
  SwitchManualIntSizeEos_ChunkBody* = ref object of KaitaiStruct
    body*: KaitaiStruct
    parent*: SwitchManualIntSizeEos_Chunk
    rawBody*: seq[byte]
  SwitchManualIntSizeEos_ChunkBody_ChunkMeta* = ref object of KaitaiStruct
    title*: string
    author*: string
    parent*: SwitchManualIntSizeEos_ChunkBody
  SwitchManualIntSizeEos_ChunkBody_ChunkDir* = ref object of KaitaiStruct
    entries*: seq[string]
    parent*: SwitchManualIntSizeEos_ChunkBody

proc read*(_: typedesc[SwitchManualIntSizeEos], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualIntSizeEos
proc read*(_: typedesc[SwitchManualIntSizeEos_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeEos): SwitchManualIntSizeEos_Chunk
proc read*(_: typedesc[SwitchManualIntSizeEos_ChunkBody], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeEos_Chunk): SwitchManualIntSizeEos_ChunkBody
proc read*(_: typedesc[SwitchManualIntSizeEos_ChunkBody_ChunkMeta], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeEos_ChunkBody): SwitchManualIntSizeEos_ChunkBody_ChunkMeta
proc read*(_: typedesc[SwitchManualIntSizeEos_ChunkBody_ChunkDir], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeEos_ChunkBody): SwitchManualIntSizeEos_ChunkBody_ChunkDir


proc read*(_: typedesc[SwitchManualIntSizeEos], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualIntSizeEos =
  template this: untyped = result
  this = new(SwitchManualIntSizeEos)
  let root = if root == nil: cast[SwitchManualIntSizeEos](this) else: cast[SwitchManualIntSizeEos](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = SwitchManualIntSizeEos_Chunk.read(this.io, this.root, this)
      this.chunks.add(it)
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizeEos], filename: string): SwitchManualIntSizeEos =
  SwitchManualIntSizeEos.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSizeEos_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeEos): SwitchManualIntSizeEos_Chunk =
  template this: untyped = result
  this = new(SwitchManualIntSizeEos_Chunk)
  let root = if root == nil: cast[SwitchManualIntSizeEos](this) else: cast[SwitchManualIntSizeEos](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readU1()
  this.code = codeExpr
  let sizeExpr = this.io.readU4le()
  this.size = sizeExpr
  let rawBodyExpr = this.io.readBytes(int(this.size))
  this.rawBody = rawBodyExpr
  let rawBodyIo = newKaitaiStream(rawBodyExpr)
  let bodyExpr = SwitchManualIntSizeEos_ChunkBody.read(rawBodyIo, this.root, this)
  this.body = bodyExpr

proc fromFile*(_: typedesc[SwitchManualIntSizeEos_Chunk], filename: string): SwitchManualIntSizeEos_Chunk =
  SwitchManualIntSizeEos_Chunk.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSizeEos_ChunkBody], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeEos_Chunk): SwitchManualIntSizeEos_ChunkBody =
  template this: untyped = result
  this = new(SwitchManualIntSizeEos_ChunkBody)
  let root = if root == nil: cast[SwitchManualIntSizeEos](this) else: cast[SwitchManualIntSizeEos](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    let on = this.parent.code
    if on == 17:
      let rawBodyExpr = this.io.readBytesFull()
      this.rawBody = rawBodyExpr
      let rawBodyIo = newKaitaiStream(rawBodyExpr)
      let bodyExpr = SwitchManualIntSizeEos_ChunkBody_ChunkMeta.read(rawBodyIo, this.root, this)
      this.body = bodyExpr
    elif on == 34:
      let rawBodyExpr = this.io.readBytesFull()
      this.rawBody = rawBodyExpr
      let rawBodyIo = newKaitaiStream(rawBodyExpr)
      let bodyExpr = SwitchManualIntSizeEos_ChunkBody_ChunkDir.read(rawBodyIo, this.root, this)
      this.body = bodyExpr
    else:
      let bodyExpr = this.io.readBytesFull()
      this.body = bodyExpr

proc fromFile*(_: typedesc[SwitchManualIntSizeEos_ChunkBody], filename: string): SwitchManualIntSizeEos_ChunkBody =
  SwitchManualIntSizeEos_ChunkBody.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSizeEos_ChunkBody_ChunkMeta], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeEos_ChunkBody): SwitchManualIntSizeEos_ChunkBody_ChunkMeta =
  template this: untyped = result
  this = new(SwitchManualIntSizeEos_ChunkBody_ChunkMeta)
  let root = if root == nil: cast[SwitchManualIntSizeEos](this) else: cast[SwitchManualIntSizeEos](root)
  this.io = io
  this.root = root
  this.parent = parent

  let titleExpr = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
  this.title = titleExpr
  let authorExpr = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
  this.author = authorExpr

proc fromFile*(_: typedesc[SwitchManualIntSizeEos_ChunkBody_ChunkMeta], filename: string): SwitchManualIntSizeEos_ChunkBody_ChunkMeta =
  SwitchManualIntSizeEos_ChunkBody_ChunkMeta.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntSizeEos_ChunkBody_ChunkDir], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntSizeEos_ChunkBody): SwitchManualIntSizeEos_ChunkBody_ChunkDir =
  template this: untyped = result
  this = new(SwitchManualIntSizeEos_ChunkBody_ChunkDir)
  let root = if root == nil: cast[SwitchManualIntSizeEos](this) else: cast[SwitchManualIntSizeEos](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = encode(this.io.readBytes(int(4)), "UTF-8")
      this.entries.add(it)
      inc i

proc fromFile*(_: typedesc[SwitchManualIntSizeEos_ChunkBody_ChunkDir], filename: string): SwitchManualIntSizeEos_ChunkBody_ChunkDir =
  SwitchManualIntSizeEos_ChunkBody_ChunkDir.read(newKaitaiFileStream(filename), nil, nil)

