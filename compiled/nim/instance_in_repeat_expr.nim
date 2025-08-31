import kaitai_struct_nim_runtime
import options

type
  InstanceInRepeatExpr* = ref object of KaitaiStruct
    `chunks`*: seq[InstanceInRepeatExpr_Chunk]
    `parent`*: KaitaiStruct
    `numChunksInst`: uint32
    `numChunksInstFlag`: bool
  InstanceInRepeatExpr_Chunk* = ref object of KaitaiStruct
    `offset`*: uint32
    `len`*: uint32
    `parent`*: InstanceInRepeatExpr

proc read*(_: typedesc[InstanceInRepeatExpr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceInRepeatExpr
proc read*(_: typedesc[InstanceInRepeatExpr_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: InstanceInRepeatExpr): InstanceInRepeatExpr_Chunk

proc numChunks*(this: InstanceInRepeatExpr): uint32

proc read*(_: typedesc[InstanceInRepeatExpr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceInRepeatExpr =
  template this: untyped = result
  this = new(InstanceInRepeatExpr)
  let root = if root == nil: cast[InstanceInRepeatExpr](this) else: cast[InstanceInRepeatExpr](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(this.numChunks):
    let it = InstanceInRepeatExpr_Chunk.read(this.io, this.root, this)
    this.chunks.add(it)

proc numChunks(this: InstanceInRepeatExpr): uint32 = 
  if this.numChunksInstFlag:
    return this.numChunksInst
  let pos = this.io.pos()
  this.io.seek(int(this.io.pos + 16))
  let numChunksInstExpr = this.io.readU4le()
  this.numChunksInst = numChunksInstExpr
  this.io.seek(pos)
  this.numChunksInstFlag = true
  return this.numChunksInst

proc fromFile*(_: typedesc[InstanceInRepeatExpr], filename: string): InstanceInRepeatExpr =
  InstanceInRepeatExpr.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceInRepeatExpr_Chunk], io: KaitaiStream, root: KaitaiStruct, parent: InstanceInRepeatExpr): InstanceInRepeatExpr_Chunk =
  template this: untyped = result
  this = new(InstanceInRepeatExpr_Chunk)
  let root = if root == nil: cast[InstanceInRepeatExpr](this) else: cast[InstanceInRepeatExpr](root)
  this.io = io
  this.root = root
  this.parent = parent

  let offsetExpr = this.io.readU4le()
  this.offset = offsetExpr
  let lenExpr = this.io.readU4le()
  this.len = lenExpr

proc fromFile*(_: typedesc[InstanceInRepeatExpr_Chunk], filename: string): InstanceInRepeatExpr_Chunk =
  InstanceInRepeatExpr_Chunk.read(newKaitaiFileStream(filename), nil, nil)

