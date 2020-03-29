import kaitai_struct_nim_runtime

type
  RepeatEosStruct_Chunk* = ref RepeatEosStruct_ChunkObj
  RepeatEosStruct_ChunkObj* = object
    offset*: uint32
    len*: uint32
    io*: KaitaiStream
    root*: RepeatEosStruct
    parent*: RepeatEosStruct
  RepeatEosStruct* = ref RepeatEosStructObj
  RepeatEosStructObj* = object
    chunks*: seq[RepeatEosStruct_Chunk]
    io*: KaitaiStream
    root*: RepeatEosStruct
    parent*: ref RootObj

### RepeatEosStruct_Chunk ###
proc read*(_: typedesc[RepeatEosStruct_Chunk], io: KaitaiStream, root: RepeatEosStruct, parent: RepeatEosStruct): RepeatEosStruct_Chunk =
  result = new(RepeatEosStruct_Chunk)
  let root = if root == nil: cast[RepeatEosStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let offset = io.readU4le()
  result.offset = offset
  let len = io.readU4le()
  result.len = len

proc fromFile*(_: typedesc[RepeatEosStruct_Chunk], filename: string): RepeatEosStruct_Chunk =
  RepeatEosStruct_Chunk.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatEosStruct_ChunkObj) =
  close(x.io)

### RepeatEosStruct ###
proc read*(_: typedesc[RepeatEosStruct], io: KaitaiStream, root: RepeatEosStruct, parent: ref RootObj): RepeatEosStruct =
  result = new(RepeatEosStruct)
  let root = if root == nil: cast[RepeatEosStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  chunks = newSeq[RepeatEosStruct_Chunk]()
  block:
    var i: int
    while not io.eof:
      chunks.add(RepeatEosStruct_Chunk.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[RepeatEosStruct], filename: string): RepeatEosStruct =
  RepeatEosStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatEosStructObj) =
  close(x.io)

