import ../../runtime/nim/kaitai



type
  Block* = ref BlockObj
  BlockObj* = object
    io: KaitaiStream
    root*: BufferedStruct
    parent*: BufferedStruct
    number1*: uint32
    number2*: uint32
  BufferedStruct* = ref BufferedStructObj
  BufferedStructObj* = object
    io: KaitaiStream
    root*: BufferedStruct
    parent*: ref RootObj
    len1*: uint32
    block1*: Block
    len2*: uint32
    block2*: Block
    finisher*: uint32

# Block
proc read*(_: typedesc[Block], io: KaitaiStream, root: BufferedStruct, parent: BufferedStruct): owned Block =
  result = new(Block)
  let root = if root == nil: cast[BufferedStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.number1 = readU4le(io)
  result.number2 = readU4le(io)

proc fromFile*(_: typedesc[Block], filename: string): owned Block =
  Block.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var BlockObj) =
  close(x.io)

# BufferedStruct
proc read*(_: typedesc[BufferedStruct], io: KaitaiStream, root: BufferedStruct, parent: ref RootObj): owned BufferedStruct =
  result = new(BufferedStruct)
  let root = if root == nil: cast[BufferedStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.len1 = readU4le(io)
  result.block1 = Block.read(io, root, result)
  result.len2 = readU4le(io)
  result.block2 = Block.read(io, root, result)
  result.finisher = readU4le(io)

proc fromFile*(_: typedesc[BufferedStruct], filename: string): owned BufferedStruct =
  BufferedStruct.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var BufferedStructObj) =
  close(x.io)

