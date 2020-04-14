import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  RepeatEosStruct* = ref object of KaitaiStruct
    chunks*: seq[RepeatEosStruct_Chunk]
    parent*: KaitaiStruct
  RepeatEosStruct_Chunk* = ref object of KaitaiStruct
    offset*: uint32
    len*: uint32
    parent*: RepeatEosStruct

proc read*(_: typedesc[RepeatEosStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosStruct
proc read*(_: typedesc[RepeatEosStruct_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: RepeatEosStruct): RepeatEosStruct_Chunk


proc read*(_: typedesc[RepeatEosStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatEosStruct =
  template this: untyped = result
  this = new(RepeatEosStruct)
  let root = if root == nil: cast[RepeatEosStruct](this) else: cast[RepeatEosStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  while not this.io.isEof:
    this.chunks.add(RepeatEosStruct_Chunk.read(this.io, this.root, this))

proc fromFile*(_: typedesc[RepeatEosStruct], filename: string): RepeatEosStruct =
  RepeatEosStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[RepeatEosStruct_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: RepeatEosStruct): RepeatEosStruct_Chunk =
  template this: untyped = result
  this = new(RepeatEosStruct_Chunk)
  let root = if root == nil: cast[RepeatEosStruct](this) else: cast[RepeatEosStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.offset = this.io.readU4le()
  this.len = this.io.readU4le()

proc fromFile*(_: typedesc[RepeatEosStruct_Chunk], filename: string): RepeatEosStruct_Chunk =
  RepeatEosStruct_Chunk.read(newKaitaiFileStream(filename), nil, nil)

