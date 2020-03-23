import kaitai_struct_nim_runtime

type
  BufferedStructblock* = ref BufferedStructblockObj
  BufferedStructblockObj* = object
    len1*: uint32
    block1*: Block
    len2*: uint32
    block2*: Block
    finisher*: uint32
    io*: KaitaiStream
    root*: BufferedStruct
    parent*: ref RootObj
    rawBlock1*: string
    rawBlock2*: string
  BufferedStruct* = ref BufferedStructObj
  BufferedStructObj* = object
    len1*: uint32
    block1*: Block
    len2*: uint32
    block2*: Block
    finisher*: uint32
    io*: KaitaiStream
    root*: BufferedStruct
    parent*: ref RootObj
    rawBlock1*: string
    rawBlock2*: string

### BufferedStructblock ###
proc read*(_: typedesc[BufferedStructblock], io: KaitaiStream, root: BufferedStruct, parent: BufferedStruct): BufferedStructblock =
  result = new(BufferedStructblock)
  let root = if root == nil: cast[BufferedStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.number1 = result.io.readU4le()
  result.number2 = result.io.readU4le()

proc fromFile*(_: typedesc[BufferedStructblock], filename: string): BufferedStructblock =
  BufferedStructblock.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BufferedStructblockObj) =
  close(x.io)

### BufferedStruct ###
proc read*(_: typedesc[BufferedStruct], io: KaitaiStream, root: BufferedStruct, parent: ref RootObj): BufferedStruct =
  result = new(BufferedStruct)
  let root = if root == nil: cast[BufferedStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.len1 = result.io.readU4le()
  result.rawBlock1 = result.io.readBytes(len1)
  rawBlock1Io = newKaitaiStringStream(rawBlock1)
  result.block1 = Block.read(rawBlock1Io, result, root)
  result.len2 = result.io.readU4le()
  result.rawBlock2 = result.io.readBytes(len2)
  rawBlock2Io = newKaitaiStringStream(rawBlock2)
  result.block2 = Block.read(rawBlock2Io, result, root)
  result.finisher = result.io.readU4le()

proc fromFile*(_: typedesc[BufferedStruct], filename: string): BufferedStruct =
  BufferedStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BufferedStructObj) =
  close(x.io)

