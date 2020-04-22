import kaitai_struct_nim_runtime
import options

type
  ProcessRepeatUsertype* = ref object of KaitaiStruct
    blocks*: seq[ProcessRepeatUsertype_Block]
    parent*: KaitaiStruct
    rawBlocks*: seq[seq[byte]]
    rawRawBlocks*: seq[seq[byte]]
  ProcessRepeatUsertype_Block* = ref object of KaitaiStruct
    a*: int32
    b*: int8
    parent*: ProcessRepeatUsertype

proc read*(_: typedesc[ProcessRepeatUsertype], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatUsertype
proc read*(_: typedesc[ProcessRepeatUsertype_Block], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertype): ProcessRepeatUsertype_Block


proc read*(_: typedesc[ProcessRepeatUsertype], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatUsertype =
  template this: untyped = result
  this = new(ProcessRepeatUsertype)
  let root = if root == nil: cast[ProcessRepeatUsertype](this) else: cast[ProcessRepeatUsertype](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(2):
    let buf = this.io.readBytes(int(5))
    this.rawRawBlocks.add(buf)
    let buf = this.rawRawBlocks[i].processXor(158)
    this.rawBlocks.add(buf)
    let rawBlocksIo = newKaitaiStream(buf)
    let it = ProcessRepeatUsertype_Block.read(rawBlocksIo, this.root, this)
    this.blocks.add(it)

proc fromFile*(_: typedesc[ProcessRepeatUsertype], filename: string): ProcessRepeatUsertype =
  ProcessRepeatUsertype.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessRepeatUsertype_Block], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertype): ProcessRepeatUsertype_Block =
  template this: untyped = result
  this = new(ProcessRepeatUsertype_Block)
  let root = if root == nil: cast[ProcessRepeatUsertype](this) else: cast[ProcessRepeatUsertype](root)
  this.io = io
  this.root = root
  this.parent = parent

  let aExpr = this.io.readS4le()
  this.a = aExpr
  let bExpr = this.io.readS1()
  this.b = bExpr

proc fromFile*(_: typedesc[ProcessRepeatUsertype_Block], filename: string): ProcessRepeatUsertype_Block =
  ProcessRepeatUsertype_Block.read(newKaitaiFileStream(filename), nil, nil)

