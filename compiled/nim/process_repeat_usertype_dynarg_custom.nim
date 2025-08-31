import kaitai_struct_nim_runtime
import options
import my_custom_fx

type
  ProcessRepeatUsertypeDynargCustom* = ref object of KaitaiStruct
    `blocks`*: seq[ProcessRepeatUsertypeDynargCustom_Block]
    `blocksB`*: ProcessRepeatUsertypeDynargCustom_BlocksBWrapper
    `parent`*: KaitaiStruct
    `rawBlocks`*: seq[seq[byte]]
    `rawRawBlocks`*: seq[seq[byte]]
  ProcessRepeatUsertypeDynargCustom_Block* = ref object of KaitaiStruct
    `a`*: uint32
    `parent`*: ProcessRepeatUsertypeDynargCustom
  ProcessRepeatUsertypeDynargCustom_BlocksBWrapper* = ref object of KaitaiStruct
    `dummy`*: uint8
    `parent`*: ProcessRepeatUsertypeDynargCustom
    `blocks0BInst`: uint8
    `blocks0BInstFlag`: bool
    `blocks1BInst`: uint8
    `blocks1BInstFlag`: bool

proc read*(_: typedesc[ProcessRepeatUsertypeDynargCustom], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatUsertypeDynargCustom
proc read*(_: typedesc[ProcessRepeatUsertypeDynargCustom_Block], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertypeDynargCustom): ProcessRepeatUsertypeDynargCustom_Block
proc read*(_: typedesc[ProcessRepeatUsertypeDynargCustom_BlocksBWrapper], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertypeDynargCustom): ProcessRepeatUsertypeDynargCustom_BlocksBWrapper

proc blocks0B*(this: ProcessRepeatUsertypeDynargCustom_BlocksBWrapper): uint8
proc blocks1B*(this: ProcessRepeatUsertypeDynargCustom_BlocksBWrapper): uint8

proc read*(_: typedesc[ProcessRepeatUsertypeDynargCustom], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatUsertypeDynargCustom =
  template this: untyped = result
  this = new(ProcessRepeatUsertypeDynargCustom)
  let root = if root == nil: cast[ProcessRepeatUsertypeDynargCustom](this) else: cast[ProcessRepeatUsertypeDynargCustom](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(2):
    let buf = this.io.readBytes(int(5))
    this.rawRawBlocks.add(buf)
    let buf = my_custom_fx(this.rawRawBlocks[i], this.io.pos + 13 * i, this.io.pos %%% 2 == 0, (if i == 1: @[32'u8, 48'u8] else: @[64'u8]))
    this.rawBlocks.add(buf)
    let rawBlocksIo = newKaitaiStream(buf)
    let it = ProcessRepeatUsertypeDynargCustom_Block.read(rawBlocksIo, this.root, this)
    this.blocks.add(it)
  let blocksBExpr = ProcessRepeatUsertypeDynargCustom_BlocksBWrapper.read(this.io, this.root, this)
  this.blocksB = blocksBExpr

proc fromFile*(_: typedesc[ProcessRepeatUsertypeDynargCustom], filename: string): ProcessRepeatUsertypeDynargCustom =
  ProcessRepeatUsertypeDynargCustom.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessRepeatUsertypeDynargCustom_Block], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertypeDynargCustom): ProcessRepeatUsertypeDynargCustom_Block =
  template this: untyped = result
  this = new(ProcessRepeatUsertypeDynargCustom_Block)
  let root = if root == nil: cast[ProcessRepeatUsertypeDynargCustom](this) else: cast[ProcessRepeatUsertypeDynargCustom](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readU4le()
  this.a = aExpr

proc fromFile*(_: typedesc[ProcessRepeatUsertypeDynargCustom_Block], filename: string): ProcessRepeatUsertypeDynargCustom_Block =
  ProcessRepeatUsertypeDynargCustom_Block.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessRepeatUsertypeDynargCustom_BlocksBWrapper], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertypeDynargCustom): ProcessRepeatUsertypeDynargCustom_BlocksBWrapper =
  template this: untyped = result
  this = new(ProcessRepeatUsertypeDynargCustom_BlocksBWrapper)
  let root = if root == nil: cast[ProcessRepeatUsertypeDynargCustom](this) else: cast[ProcessRepeatUsertypeDynargCustom](root)
  this.io = io
  this.root = root
  this.parent = parent

  let dummyExpr = this.io.readU1()
  this.dummy = dummyExpr

proc blocks0B(this: ProcessRepeatUsertypeDynargCustom_BlocksBWrapper): uint8 = 
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

proc blocks1B(this: ProcessRepeatUsertypeDynargCustom_BlocksBWrapper): uint8 = 
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

proc fromFile*(_: typedesc[ProcessRepeatUsertypeDynargCustom_BlocksBWrapper], filename: string): ProcessRepeatUsertypeDynargCustom_BlocksBWrapper =
  ProcessRepeatUsertypeDynargCustom_BlocksBWrapper.read(newKaitaiFileStream(filename), nil, nil)

