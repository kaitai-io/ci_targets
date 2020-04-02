import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  BufferedStruct* = ref object of KaitaiStruct
    len1*: uint32
    block1*: BufferedStruct_Block
    len2*: uint32
    block2*: BufferedStruct_Block
    finisher*: uint32
    parent*: KaitaiStruct
    rawBlock1*: string
    rawBlock2*: string
  BufferedStruct_Block* = ref object of KaitaiStruct
    number1*: uint32
    number2*: uint32
    parent*: BufferedStruct

proc read*(_: typedesc[BufferedStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BufferedStruct
proc read*(_: typedesc[BufferedStruct_Block], io: KaitaiStream, root: KaitaiStruct, parent: BufferedStruct): BufferedStruct_Block

proc read*(_: typedesc[BufferedStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BufferedStruct =
  template this: untyped = result
  this = new(BufferedStruct)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.len1 = this.io.readU4le()
  this.rawBlock1 = this.io.readBytes(int(this.len1))
  let rawBlock1Io = newKaitaiStringStream(this.rawBlock1)
  this.block1 = BufferedStruct_Block.read(rawBlock1Io, this.root, this)
  this.len2 = this.io.readU4le()
  this.rawBlock2 = this.io.readBytes(int(this.len2))
  let rawBlock2Io = newKaitaiStringStream(this.rawBlock2)
  this.block2 = BufferedStruct_Block.read(rawBlock2Io, this.root, this)
  this.finisher = this.io.readU4le()

proc fromFile*(_: typedesc[BufferedStruct], filename: string): BufferedStruct =
  BufferedStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BufferedStruct_Block], io: KaitaiStream, root: KaitaiStruct, parent: BufferedStruct): BufferedStruct_Block =
  template this: untyped = result
  this = new(BufferedStruct_Block)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.number1 = this.io.readU4le()
  this.number2 = this.io.readU4le()

proc fromFile*(_: typedesc[BufferedStruct_Block], filename: string): BufferedStruct_Block =
  BufferedStruct_Block.read(newKaitaiFileStream(filename), nil, nil)

