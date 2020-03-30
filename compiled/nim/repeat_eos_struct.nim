import kaitai_struct_nim_runtime
import options

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
  let this = new(RepeatEosStruct_Chunk)
  let root = if root == nil: cast[RepeatEosStruct](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let offset = this.io.readU4le()
  this.offset = offset
  let len = this.io.readU4le()
  this.len = len
  result = this

proc fromFile*(_: typedesc[RepeatEosStruct_Chunk], filename: string): RepeatEosStruct_Chunk =
  RepeatEosStruct_Chunk.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatEosStruct_ChunkObj) =
  close(x.io)

### RepeatEosStruct ###
proc read*(_: typedesc[RepeatEosStruct], io: KaitaiStream, root: RepeatEosStruct, parent: ref RootObj): RepeatEosStruct =
  let this = new(RepeatEosStruct)
  let root = if root == nil: cast[RepeatEosStruct](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.chunks = newSeq[RepeatEosStruct_Chunk]()
  block:
    var i: int
    while not this.io.eof:
      this.chunks.add(RepeatEosStruct_Chunk.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[RepeatEosStruct], filename: string): RepeatEosStruct =
  RepeatEosStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatEosStructObj) =
  close(x.io)

