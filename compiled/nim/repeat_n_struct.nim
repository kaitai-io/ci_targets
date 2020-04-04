import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  RepeatNStruct* = ref object of KaitaiStruct
    qty*: uint32
    chunks*: seq[RepeatNStruct_Chunk]
    parent*: KaitaiStruct
  RepeatNStruct_Chunk* = ref object of KaitaiStruct
    offset*: uint32
    len*: uint32
    parent*: RepeatNStruct

proc read*(_: typedesc[RepeatNStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNStruct
proc read*(_: typedesc[RepeatNStruct_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: RepeatNStruct): RepeatNStruct_Chunk


proc read*(_: typedesc[RepeatNStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNStruct =
  template this: untyped = result
  this = new(RepeatNStruct)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.qty = this.io.readU4le()
  for i in 0 ..< this.qty:
    this.chunks.add(RepeatNStruct_Chunk.read(this.io, this.root, this))

proc fromFile*(_: typedesc[RepeatNStruct], filename: string): RepeatNStruct =
  RepeatNStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[RepeatNStruct_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: RepeatNStruct): RepeatNStruct_Chunk =
  template this: untyped = result
  this = new(RepeatNStruct_Chunk)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.offset = this.io.readU4le()
  this.len = this.io.readU4le()

proc fromFile*(_: typedesc[RepeatNStruct_Chunk], filename: string): RepeatNStruct_Chunk =
  RepeatNStruct_Chunk.read(newKaitaiFileStream(filename), nil, nil)

