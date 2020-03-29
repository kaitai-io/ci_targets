import kaitai_struct_nim_runtime

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
  result = new(ProcessRepeatUsertype_Block)
  let root = if root == nil: cast[ProcessRepeatUsertype](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let a = io.readS4le()
  result.a = a
  let b = io.readS1()
  result.b = b

proc fromFile*(_: typedesc[ProcessRepeatUsertype_Block], filename: string): ProcessRepeatUsertype_Block =
  ProcessRepeatUsertype_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRepeatUsertype_BlockObj) =
  close(x.io)

### ProcessRepeatUsertype ###
proc read*(_: typedesc[ProcessRepeatUsertype], io: KaitaiStream, root: ProcessRepeatUsertype, parent: ref RootObj): ProcessRepeatUsertype =
  result = new(ProcessRepeatUsertype)
  let root = if root == nil: cast[ProcessRepeatUsertype](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  rawBlocks = newString(2)
  rawRawBlocks = newString(2)
  blocks = newSeq[ProcessRepeatUsertype_Block](2)
  for i in 0 ..< 2:
    rawRawBlocks.add(io.readBytes(int(5)))
    rawBlocks.add(rawRawBlocks.processXor(158))
    let rawBlocksIo = newKaitaiStringStream(rawBlocks)
    blocks.add(ProcessRepeatUsertype_Block.read(rawBlocksIo, result, root))

proc fromFile*(_: typedesc[ProcessRepeatUsertype], filename: string): ProcessRepeatUsertype =
  ProcessRepeatUsertype.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRepeatUsertypeObj) =
  close(x.io)

