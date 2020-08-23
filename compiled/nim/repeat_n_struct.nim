import kaitai_struct_nim_runtime
import options

type
  RepeatNStruct* = ref object of KaitaiStruct
    `qty`*: uint32
    `chunks`*: seq[RepeatNStruct_Chunk]
    `parent`*: KaitaiStruct
  RepeatNStruct_Chunk* = ref object of KaitaiStruct
    `offset`*: uint32
    `len`*: uint32
    `parent`*: RepeatNStruct

proc read*(_: typedesc[RepeatNStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNStruct
proc read*(_: typedesc[RepeatNStruct_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: RepeatNStruct): RepeatNStruct_Chunk


proc read*(_: typedesc[RepeatNStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNStruct =
  template this: untyped = result
  this = new(RepeatNStruct)
  let root = if root == nil: cast[RepeatNStruct](this) else: cast[RepeatNStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let qtyExpr = this.io.readU4le()
  this.qty = qtyExpr
  for i in 0 ..< int(this.qty):
    let it = RepeatNStruct_Chunk.read(this.io, this.root, this)
    this.chunks.add(it)

proc fromFile*(_: typedesc[RepeatNStruct], filename: string): RepeatNStruct =
  RepeatNStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[RepeatNStruct_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: RepeatNStruct): RepeatNStruct_Chunk =
  template this: untyped = result
  this = new(RepeatNStruct_Chunk)
  let root = if root == nil: cast[RepeatNStruct](this) else: cast[RepeatNStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let offsetExpr = this.io.readU4le()
  this.offset = offsetExpr
  let lenExpr = this.io.readU4le()
  this.len = lenExpr

proc fromFile*(_: typedesc[RepeatNStruct_Chunk], filename: string): RepeatNStruct_Chunk =
  RepeatNStruct_Chunk.read(newKaitaiFileStream(filename), nil, nil)

