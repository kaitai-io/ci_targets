import kaitai_struct_nim_runtime

type
  BufferedStruct_Block* = ref BufferedStruct_BlockObj
  BufferedStruct_BlockObj* = object
    number1*: uint32
    number2*: uint32
    io*: KaitaiStream
    root*: BufferedStruct
    parent*: BufferedStruct
  BufferedStruct* = ref BufferedStructObj
  BufferedStructObj* = object
    len1*: uint32
    block1*: BufferedStruct_Block
    len2*: uint32
    block2*: BufferedStruct_Block
    finisher*: uint32
    io*: KaitaiStream
    root*: BufferedStruct
    parent*: ref RootObj
    rawBlock1*: string
    rawBlock2*: string

### BufferedStruct_Block ###
proc read*(_: typedesc[BufferedStruct_Block], io: KaitaiStream, root: BufferedStruct, parent: BufferedStruct): BufferedStruct_Block =
  result = new(BufferedStruct_Block)
  let root = if root == nil: cast[BufferedStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let number1 = io.readU4le()
  result.number1 = number1
  let number2 = io.readU4le()
  result.number2 = number2

proc fromFile*(_: typedesc[BufferedStruct_Block], filename: string): BufferedStruct_Block =
  BufferedStruct_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BufferedStruct_BlockObj) =
  close(x.io)

### BufferedStruct ###
proc read*(_: typedesc[BufferedStruct], io: KaitaiStream, root: BufferedStruct, parent: ref RootObj): BufferedStruct =
  result = new(BufferedStruct)
  let root = if root == nil: cast[BufferedStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let len1 = io.readU4le()
  result.len1 = len1
  let rawBlock1 = io.readBytes(int(len1))
  result.rawBlock1 = rawBlock1
  let rawBlock1Io = newKaitaiStringStream(rawBlock1)
  let block1 = BufferedStruct_Block.read(rawBlock1Io, result, root)
  result.block1 = block1
  let len2 = io.readU4le()
  result.len2 = len2
  let rawBlock2 = io.readBytes(int(len2))
  result.rawBlock2 = rawBlock2
  let rawBlock2Io = newKaitaiStringStream(rawBlock2)
  let block2 = BufferedStruct_Block.read(rawBlock2Io, result, root)
  result.block2 = block2
  let finisher = io.readU4le()
  result.finisher = finisher

proc fromFile*(_: typedesc[BufferedStruct], filename: string): BufferedStruct =
  BufferedStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BufferedStructObj) =
  close(x.io)

