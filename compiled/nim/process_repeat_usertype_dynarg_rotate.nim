import kaitai_struct_nim_runtime
import options

type
  ProcessRepeatUsertypeDynargRotate* = ref object of KaitaiStruct
    `blocksRol`*: seq[ProcessRepeatUsertypeDynargRotate_Block]
    `blocksRor`*: seq[ProcessRepeatUsertypeDynargRotate_Block]
    `blocksB`*: ProcessRepeatUsertypeDynargRotate_BlocksBWrapper
    `parent`*: KaitaiStruct
    `rawBlocksRol`*: seq[seq[byte]]
    `rawRawBlocksRol`*: seq[seq[byte]]
    `rawBlocksRor`*: seq[seq[byte]]
    `rawRawBlocksRor`*: seq[seq[byte]]
  ProcessRepeatUsertypeDynargRotate_Block* = ref object of KaitaiStruct
    `a`*: uint16
    `parent`*: ProcessRepeatUsertypeDynargRotate
  ProcessRepeatUsertypeDynargRotate_BlocksBWrapper* = ref object of KaitaiStruct
    `dummy`*: uint8
    `parent`*: ProcessRepeatUsertypeDynargRotate
    `blocksRol0BInst`: uint8
    `blocksRol0BInstFlag`: bool
    `blocksRol1BInst`: uint8
    `blocksRol1BInstFlag`: bool
    `blocksRor0BInst`: uint8
    `blocksRor0BInstFlag`: bool
    `blocksRor1BInst`: uint8
    `blocksRor1BInstFlag`: bool
    `blocksRor2BInst`: uint8
    `blocksRor2BInstFlag`: bool

proc read*(_: typedesc[ProcessRepeatUsertypeDynargRotate], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatUsertypeDynargRotate
proc read*(_: typedesc[ProcessRepeatUsertypeDynargRotate_Block], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertypeDynargRotate): ProcessRepeatUsertypeDynargRotate_Block
proc read*(_: typedesc[ProcessRepeatUsertypeDynargRotate_BlocksBWrapper], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertypeDynargRotate): ProcessRepeatUsertypeDynargRotate_BlocksBWrapper

proc blocksRol0B*(this: ProcessRepeatUsertypeDynargRotate_BlocksBWrapper): uint8
proc blocksRol1B*(this: ProcessRepeatUsertypeDynargRotate_BlocksBWrapper): uint8
proc blocksRor0B*(this: ProcessRepeatUsertypeDynargRotate_BlocksBWrapper): uint8
proc blocksRor1B*(this: ProcessRepeatUsertypeDynargRotate_BlocksBWrapper): uint8
proc blocksRor2B*(this: ProcessRepeatUsertypeDynargRotate_BlocksBWrapper): uint8

proc read*(_: typedesc[ProcessRepeatUsertypeDynargRotate], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatUsertypeDynargRotate =
  template this: untyped = result
  this = new(ProcessRepeatUsertypeDynargRotate)
  let root = if root == nil: cast[ProcessRepeatUsertypeDynargRotate](this) else: cast[ProcessRepeatUsertypeDynargRotate](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(2):
    let buf = this.io.readBytes(int(3))
    this.rawRawBlocksRol.add(buf)
    let buf = this.rawRawBlocksRol[i].processRotateLeft(int(this.io.pos - 4 * i))
    this.rawBlocksRol.add(buf)
    let rawBlocksRolIo = newKaitaiStream(buf)
    let it = ProcessRepeatUsertypeDynargRotate_Block.read(rawBlocksRolIo, this.root, this)
    this.blocksRol.add(it)
  for i in 0 ..< int(3):
    let buf = this.io.readBytes(int(3))
    this.rawRawBlocksRor.add(buf)
    let buf = this.rawRawBlocksRor[i].processRotateLeft(int(8 - ((this.io.pos - 6) - 4 * i)))
    this.rawBlocksRor.add(buf)
    let rawBlocksRorIo = newKaitaiStream(buf)
    let it = ProcessRepeatUsertypeDynargRotate_Block.read(rawBlocksRorIo, this.root, this)
    this.blocksRor.add(it)
  let blocksBExpr = ProcessRepeatUsertypeDynargRotate_BlocksBWrapper.read(this.io, this.root, this)
  this.blocksB = blocksBExpr

proc fromFile*(_: typedesc[ProcessRepeatUsertypeDynargRotate], filename: string): ProcessRepeatUsertypeDynargRotate =
  ProcessRepeatUsertypeDynargRotate.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessRepeatUsertypeDynargRotate_Block], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertypeDynargRotate): ProcessRepeatUsertypeDynargRotate_Block =
  template this: untyped = result
  this = new(ProcessRepeatUsertypeDynargRotate_Block)
  let root = if root == nil: cast[ProcessRepeatUsertypeDynargRotate](this) else: cast[ProcessRepeatUsertypeDynargRotate](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readU2le()
  this.a = aExpr

proc fromFile*(_: typedesc[ProcessRepeatUsertypeDynargRotate_Block], filename: string): ProcessRepeatUsertypeDynargRotate_Block =
  ProcessRepeatUsertypeDynargRotate_Block.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessRepeatUsertypeDynargRotate_BlocksBWrapper], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertypeDynargRotate): ProcessRepeatUsertypeDynargRotate_BlocksBWrapper =
  template this: untyped = result
  this = new(ProcessRepeatUsertypeDynargRotate_BlocksBWrapper)
  let root = if root == nil: cast[ProcessRepeatUsertypeDynargRotate](this) else: cast[ProcessRepeatUsertypeDynargRotate](root)
  this.io = io
  this.root = root
  this.parent = parent

  let dummyExpr = this.io.readU1()
  this.dummy = dummyExpr

proc blocksRol0B(this: ProcessRepeatUsertypeDynargRotate_BlocksBWrapper): uint8 = 
  if this.blocksRol0BInstFlag:
    return this.blocksRol0BInst
  let io = this.parent.blocksRol[0].io
  let pos = io.pos()
  io.seek(int(2))
  let blocksRol0BInstExpr = io.readU1()
  this.blocksRol0BInst = blocksRol0BInstExpr
  io.seek(pos)
  this.blocksRol0BInstFlag = true
  return this.blocksRol0BInst

proc blocksRol1B(this: ProcessRepeatUsertypeDynargRotate_BlocksBWrapper): uint8 = 
  if this.blocksRol1BInstFlag:
    return this.blocksRol1BInst
  let io = this.parent.blocksRol[1].io
  let pos = io.pos()
  io.seek(int(2))
  let blocksRol1BInstExpr = io.readU1()
  this.blocksRol1BInst = blocksRol1BInstExpr
  io.seek(pos)
  this.blocksRol1BInstFlag = true
  return this.blocksRol1BInst

proc blocksRor0B(this: ProcessRepeatUsertypeDynargRotate_BlocksBWrapper): uint8 = 
  if this.blocksRor0BInstFlag:
    return this.blocksRor0BInst
  let io = this.parent.blocksRor[0].io
  let pos = io.pos()
  io.seek(int(2))
  let blocksRor0BInstExpr = io.readU1()
  this.blocksRor0BInst = blocksRor0BInstExpr
  io.seek(pos)
  this.blocksRor0BInstFlag = true
  return this.blocksRor0BInst

proc blocksRor1B(this: ProcessRepeatUsertypeDynargRotate_BlocksBWrapper): uint8 = 
  if this.blocksRor1BInstFlag:
    return this.blocksRor1BInst
  let io = this.parent.blocksRor[1].io
  let pos = io.pos()
  io.seek(int(2))
  let blocksRor1BInstExpr = io.readU1()
  this.blocksRor1BInst = blocksRor1BInstExpr
  io.seek(pos)
  this.blocksRor1BInstFlag = true
  return this.blocksRor1BInst

proc blocksRor2B(this: ProcessRepeatUsertypeDynargRotate_BlocksBWrapper): uint8 = 
  if this.blocksRor2BInstFlag:
    return this.blocksRor2BInst
  let io = this.parent.blocksRor[2].io
  let pos = io.pos()
  io.seek(int(2))
  let blocksRor2BInstExpr = io.readU1()
  this.blocksRor2BInst = blocksRor2BInstExpr
  io.seek(pos)
  this.blocksRor2BInstFlag = true
  return this.blocksRor2BInst

proc fromFile*(_: typedesc[ProcessRepeatUsertypeDynargRotate_BlocksBWrapper], filename: string): ProcessRepeatUsertypeDynargRotate_BlocksBWrapper =
  ProcessRepeatUsertypeDynargRotate_BlocksBWrapper.read(newKaitaiFileStream(filename), nil, nil)

