import ../../../runtime/nim/kaitai_struct_nim_runtime



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

  let number1 = readU4le(io)
  result.number1 = number1
  let number2 = readU4le(io)
  result.number2 = number2


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

  let len1 = readU4le(io)
  result.len1 = len1
  let block1 = readBytes(io, int(result.len1))
  result.block1 = block1
  let len2 = readU4le(io)
  result.len2 = len2
  let block2 = readBytes(io, int(result.len2))
  result.block2 = block2
  let finisher = readU4le(io)
  result.finisher = finisher


proc fromFile*(_: typedesc[BufferedStruct], filename: string): owned BufferedStruct =
  BufferedStruct.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var BufferedStructObj) =
  close(x.io)

