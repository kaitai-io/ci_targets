import kaitai_struct_nim_runtime
import options

type
  ProcessRepeatUsertype_Block* = ref ProcessRepeatUsertype_BlockObj
  ProcessRepeatUsertype_BlockObj* = object
    a*: int32
    b*: int8
    io*: KaitaiStream
    root*: ProcessRepeatUsertype
    parent*: ProcessRepeatUsertype
  ProcessRepeatUsertype* = ref ProcessRepeatUsertypeObj
  ProcessRepeatUsertypeObj* = object
    blocks*: seq[ProcessRepeatUsertype_Block]
    io*: KaitaiStream
    root*: ProcessRepeatUsertype
    parent*: ref RootObj
    rawBlocks*: seq[string]
    rawRawBlocks*: seq[string]

### ProcessRepeatUsertype_Block ###
proc read*(_: typedesc[ProcessRepeatUsertype_Block], io: KaitaiStream, root: ProcessRepeatUsertype, parent: ProcessRepeatUsertype): ProcessRepeatUsertype_Block =
  let this = new(ProcessRepeatUsertype_Block)
  let root = if root == nil: cast[ProcessRepeatUsertype](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let a = this.io.readS4le()
  this.a = a
  let b = this.io.readS1()
  this.b = b
  result = this

proc fromFile*(_: typedesc[ProcessRepeatUsertype_Block], filename: string): ProcessRepeatUsertype_Block =
  ProcessRepeatUsertype_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRepeatUsertype_BlockObj) =
  close(x.io)

### ProcessRepeatUsertype ###
proc read*(_: typedesc[ProcessRepeatUsertype], io: KaitaiStream, root: ProcessRepeatUsertype, parent: ref RootObj): ProcessRepeatUsertype =
  let this = new(ProcessRepeatUsertype)
  let root = if root == nil: cast[ProcessRepeatUsertype](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBlocks = newString(2)
  this.rawRawBlocks = newString(2)
  blocks = newSeq[ProcessRepeatUsertype_Block](2)
  for i in 0 ..< 2:
    this.rawRawBlocks.add(this.io.readBytes(int(5)))
    this.rawBlocks.add(rawRawBlocks.processXor(158))
    let rawBlocksIo = newKaitaiStringStream(rawBlocks)
    this.blocks.add(ProcessRepeatUsertype_Block.read(rawBlocksIo, this.root, this))
  result = this

proc fromFile*(_: typedesc[ProcessRepeatUsertype], filename: string): ProcessRepeatUsertype =
  ProcessRepeatUsertype.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRepeatUsertypeObj) =
  close(x.io)

