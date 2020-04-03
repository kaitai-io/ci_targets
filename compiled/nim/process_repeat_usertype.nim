import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessRepeatUsertype* = ref object of KaitaiStruct
    blocks*: seq[ProcessRepeatUsertype_Block]
    parent*: KaitaiStruct
    rawBlocks*: seq[string]
    rawRawBlocks*: seq[string]
  ProcessRepeatUsertype_Block* = ref object of KaitaiStruct
    a*: int32
    b*: int8
    parent*: ProcessRepeatUsertype

proc read*(_: typedesc[ProcessRepeatUsertype], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatUsertype
proc read*(_: typedesc[ProcessRepeatUsertype_Block], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertype): ProcessRepeatUsertype_Block


proc read*(_: typedesc[ProcessRepeatUsertype], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRepeatUsertype =
  template this: untyped = result
  this = new(ProcessRepeatUsertype)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBlocks = newString(2)
  this.rawRawBlocks = newString(2)
  this.blocks = newSeqOfCap[ProcessRepeatUsertype_Block](2)
  for i in 0 ..< 2:
    this.rawRawBlocks.add(this.io.readBytes(int(5)))
    this.rawBlocks.add(rawRawBlocks.processXor(158))
    let rawBlocksIo = newKaitaiStringStream(this.rawBlocks)
    this.blocks.add(ProcessRepeatUsertype_Block.read(rawBlocksIo, this.root, this))

proc fromFile*(_: typedesc[ProcessRepeatUsertype], filename: string): ProcessRepeatUsertype =
  ProcessRepeatUsertype.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessRepeatUsertype_Block], io: KaitaiStream, root: KaitaiStruct, parent: ProcessRepeatUsertype): ProcessRepeatUsertype_Block =
  template this: untyped = result
  this = new(ProcessRepeatUsertype_Block)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.a = this.io.readS4le()
  this.b = this.io.readS1()

proc fromFile*(_: typedesc[ProcessRepeatUsertype_Block], filename: string): ProcessRepeatUsertype_Block =
  ProcessRepeatUsertype_Block.read(newKaitaiFileStream(filename), nil, nil)

