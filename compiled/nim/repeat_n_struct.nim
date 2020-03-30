import kaitai_struct_nim_runtime
import options

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
  let this = new(RepeatNStruct_Chunk)
  let root = if root == nil: cast[RepeatNStruct](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let offset = this.io.readU4le()
  this.offset = offset
  let len = this.io.readU4le()
  this.len = len
  result = this

proc fromFile*(_: typedesc[RepeatNStruct_Chunk], filename: string): RepeatNStruct_Chunk =
  RepeatNStruct_Chunk.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatNStruct_ChunkObj) =
  close(x.io)

### RepeatNStruct ###
proc read*(_: typedesc[RepeatNStruct], io: KaitaiStream, root: RepeatNStruct, parent: ref RootObj): RepeatNStruct =
  let this = new(RepeatNStruct)
  let root = if root == nil: cast[RepeatNStruct](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let qty = this.io.readU4le()
  this.qty = qty
  chunks = newSeq[RepeatNStruct_Chunk](this.qty)
  for i in 0 ..< this.qty:
    this.chunks.add(RepeatNStruct_Chunk.read(this.io, this.root, this))
  result = this

proc fromFile*(_: typedesc[RepeatNStruct], filename: string): RepeatNStruct =
  RepeatNStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatNStructObj) =
  close(x.io)

