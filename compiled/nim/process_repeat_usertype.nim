import kaitai_struct_nim_runtime

type
  ProcessRepeatUsertypeblock* = ref ProcessRepeatUsertypeblockObj
  ProcessRepeatUsertypeblockObj* = object
    blocks*: seq[Block]
    io*: KaitaiStream
    root*: ProcessRepeatUsertype
    parent*: ref RootObj
    rawBlocks*: seq[string]
    rawRawBlocks*: seq[string]
  ProcessRepeatUsertype* = ref ProcessRepeatUsertypeObj
  ProcessRepeatUsertypeObj* = object
    blocks*: seq[Block]
    io*: KaitaiStream
    root*: ProcessRepeatUsertype
    parent*: ref RootObj
    rawBlocks*: seq[string]
    rawRawBlocks*: seq[string]

### ProcessRepeatUsertypeblock ###
proc read*(_: typedesc[ProcessRepeatUsertypeblock], io: KaitaiStream, root: ProcessRepeatUsertype, parent: ProcessRepeatUsertype): ProcessRepeatUsertypeblock =
  result = new(ProcessRepeatUsertypeblock)
  let root = if root == nil: cast[ProcessRepeatUsertype](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.a = result.io.readS4le()
  result.b = result.io.readS1()

proc fromFile*(_: typedesc[ProcessRepeatUsertypeblock], filename: string): ProcessRepeatUsertypeblock =
  ProcessRepeatUsertypeblock.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRepeatUsertypeblockObj) =
  close(x.io)

### ProcessRepeatUsertype ###
proc read*(_: typedesc[ProcessRepeatUsertype], io: KaitaiStream, root: ProcessRepeatUsertype, parent: ref RootObj): ProcessRepeatUsertype =
  result = new(ProcessRepeatUsertype)
  let root = if root == nil: cast[ProcessRepeatUsertype](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rawBlocks = newString(2)
  result.rawRawBlocks = newString(2)
  blocks = newSeq[Block](2)
  for i in 0 ..< 2:
    result.rawRawBlocks.add(result.io.readBytes(5))
    result.rawBlocks.add(rawRawBlocks.processXor(158))
    rawBlocksIo = newKaitaiStringStream(rawBlocks)
    result.blocks.add(Block.read(rawBlocksIo, result, root))

proc fromFile*(_: typedesc[ProcessRepeatUsertype], filename: string): ProcessRepeatUsertype =
  ProcessRepeatUsertype.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRepeatUsertypeObj) =
  close(x.io)

