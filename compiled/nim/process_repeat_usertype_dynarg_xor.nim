import kaitai_struct_nim_runtime
import options

type
  ProcessRepeatUsertypeDynargXor* = ref object of KaitaiStruct
    `blocks`*: seq[ProcessRepeatUsertypeDynargXor_Block]
    `blocksB`*: ProcessRepeatUsertypeDynargXor_BlocksBWrapper
    `parent`*: KaitaiStruct
    `rawBlocks`*: seq[seq[byte]]
    `rawRawBlocks`*: seq[seq[byte]]
  ProcessRepeatUsertypeDynargXor_Block* = ref object of KaitaiStruct
    `a`*: uint32
    `parent`*: ProcessRepeatUsertypeDynargXor
  ProcessRepeatUsertypeDynargXor_BlocksBWrapper* = ref object of KaitaiStruct
    `dummy`*: uint8
    `parent`*: ProcessRepeatUsertypeDynargXor
    `blocks0BInst`: uint8
    `blocks0BInstFlag`: bool
    `blocks1BInst`: uint8
    `blocks1BInstFlag`: bool

proc read*(_: typedesc[ProcessRepeatUsertypeDynargXor], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatUsertypeDynargXor
proc read*(_: typedesc[ProcessRepeatUsertypeDynargXor_Block], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertypeDynargXor): ProcessRepeatUsertypeDynargXor_Block
proc read*(_: typedesc[ProcessRepeatUsertypeDynargXor_BlocksBWrapper], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertypeDynargXor): ProcessRepeatUsertypeDynargXor_BlocksBWrapper

proc blocks0B*(this: ProcessRepeatUsertypeDynargXor_BlocksBWrapper): uint8
proc blocks1B*(this: ProcessRepeatUsertypeDynargXor_BlocksBWrapper): uint8

proc read*(_: typedesc[ProcessRepeatUsertypeDynargXor], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatUsertypeDynargXor =
  template this: untyped = result
  this = new(ProcessRepeatUsertypeDynargXor)
  let root = if root == nil: cast[ProcessRepeatUsertypeDynargXor](this) else: cast[ProcessRepeatUsertypeDynargXor](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(2):
    let buf = this.io.readBytes(int(5))
    this.rawRawBlocks.add(buf)
    let buf = this.rawRawBlocks[i].processXor(155 xor (i shl 4 or this.io.pos))
    this.rawBlocks.add(buf)
    let rawBlocksIo = newKaitaiStream(buf)
    let it = ProcessRepeatUsertypeDynargXor_Block.read(rawBlocksIo, this.root, this)
    this.blocks.add(it)
  let blocksBExpr = ProcessRepeatUsertypeDynargXor_BlocksBWrapper.read(this.io, this.root, this)
  this.blocksB = blocksBExpr

proc fromFile*(_: typedesc[ProcessRepeatUsertypeDynargXor], filename: string): ProcessRepeatUsertypeDynargXor =
  ProcessRepeatUsertypeDynargXor.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessRepeatUsertypeDynargXor_Block], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertypeDynargXor): ProcessRepeatUsertypeDynargXor_Block =
  template this: untyped = result
  this = new(ProcessRepeatUsertypeDynargXor_Block)
  let root = if root == nil: cast[ProcessRepeatUsertypeDynargXor](this) else: cast[ProcessRepeatUsertypeDynargXor](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readU4le()
  this.a = aExpr

proc fromFile*(_: typedesc[ProcessRepeatUsertypeDynargXor_Block], filename: string): ProcessRepeatUsertypeDynargXor_Block =
  ProcessRepeatUsertypeDynargXor_Block.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessRepeatUsertypeDynargXor_BlocksBWrapper], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertypeDynargXor): ProcessRepeatUsertypeDynargXor_BlocksBWrapper =
  template this: untyped = result
  this = new(ProcessRepeatUsertypeDynargXor_BlocksBWrapper)
  let root = if root == nil: cast[ProcessRepeatUsertypeDynargXor](this) else: cast[ProcessRepeatUsertypeDynargXor](root)
  this.io = io
  this.root = root
  this.parent = parent

  let dummyExpr = this.io.readU1()
  this.dummy = dummyExpr

proc blocks0B(this: ProcessRepeatUsertypeDynargXor_BlocksBWrapper): uint8 = 
  if this.blocks0BInstFlag:
    return this.blocks0BInst
  let io = this.parent.blocks[0].io
  let pos = io.pos()
  io.seek(int(4))
  let blocks0BInstExpr = io.readU1()
  this.blocks0BInst = blocks0BInstExpr
  io.seek(pos)
  this.blocks0BInstFlag = true
  return this.blocks0BInst

proc blocks1B(this: ProcessRepeatUsertypeDynargXor_BlocksBWrapper): uint8 = 
  if this.blocks1BInstFlag:
    return this.blocks1BInst
  let io = this.parent.blocks[1].io
  let pos = io.pos()
  io.seek(int(4))
  let blocks1BInstExpr = io.readU1()
  this.blocks1BInst = blocks1BInstExpr
  io.seek(pos)
  this.blocks1BInstFlag = true
  return this.blocks1BInst

proc fromFile*(_: typedesc[ProcessRepeatUsertypeDynargXor_BlocksBWrapper], filename: string): ProcessRepeatUsertypeDynargXor_BlocksBWrapper =
  ProcessRepeatUsertypeDynargXor_BlocksBWrapper.read(newKaitaiFileStream(filename), nil, nil)

