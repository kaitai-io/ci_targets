import kaitai_struct_nim_runtime

type
  RepeatNStruct_Chunk* = ref RepeatNStruct_ChunkObj
  RepeatNStruct_ChunkObj* = object
    offset*: uint32
    len*: uint32
    io*: KaitaiStream
    root*: RepeatNStruct
    parent*: RepeatNStruct
  RepeatNStruct* = ref RepeatNStructObj
  RepeatNStructObj* = object
    qty*: uint32
    chunks*: seq[RepeatNStruct_Chunk]
    io*: KaitaiStream
    root*: RepeatNStruct
    parent*: ref RootObj

### RepeatNStruct_Chunk ###
proc read*(_: typedesc[RepeatNStruct_Chunk], io: KaitaiStream, root: RepeatNStruct, parent: RepeatNStruct): RepeatNStruct_Chunk =
  result = new(RepeatNStruct_Chunk)
  let root = if root == nil: cast[RepeatNStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let offset = io.readU4le()
  result.offset = offset
  let len = io.readU4le()
  result.len = len

proc fromFile*(_: typedesc[RepeatNStruct_Chunk], filename: string): RepeatNStruct_Chunk =
  RepeatNStruct_Chunk.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatNStruct_ChunkObj) =
  close(x.io)

### RepeatNStruct ###
proc read*(_: typedesc[RepeatNStruct], io: KaitaiStream, root: RepeatNStruct, parent: ref RootObj): RepeatNStruct =
  result = new(RepeatNStruct)
  let root = if root == nil: cast[RepeatNStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let qty = io.readU4le()
  result.qty = qty
  chunks = newSeq[RepeatNStruct_Chunk](qty)
  for i in 0 ..< qty:
    chunks.add(RepeatNStruct_Chunk.read(io, result, root))

proc fromFile*(_: typedesc[RepeatNStruct], filename: string): RepeatNStruct =
  RepeatNStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatNStructObj) =
  close(x.io)

