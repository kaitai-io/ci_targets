import kaitai_struct_nim_runtime
import options

type
  BufferedStruct* = ref object of KaitaiStruct
    `len1`*: uint32
    `block1`*: BufferedStruct_Block
    `len2`*: uint32
    `block2`*: BufferedStruct_Block
    `finisher`*: uint32
    `parent`*: KaitaiStruct
    `rawBlock1`*: seq[byte]
    `rawBlock2`*: seq[byte]
  BufferedStruct_Block* = ref object of KaitaiStruct
    `number1`*: uint32
    `number2`*: uint32
    `parent`*: BufferedStruct

proc read*(_: typedesc[BufferedStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BufferedStruct
proc read*(_: typedesc[BufferedStruct_Block], io: KaitaiStream, root: KaitaiStruct, parent: BufferedStruct): BufferedStruct_Block


proc read*(_: typedesc[BufferedStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BufferedStruct =
  template this: untyped = result
  this = new(BufferedStruct)
  let root = if root == nil: cast[BufferedStruct](this) else: cast[BufferedStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let len1Expr = this.io.readU4le()
  this.len1 = len1Expr
  let rawBlock1Expr = this.io.readBytes(int(this.len1))
  this.rawBlock1 = rawBlock1Expr
  let rawBlock1Io = newKaitaiStream(rawBlock1Expr)
  let block1Expr = BufferedStruct_Block.read(rawBlock1Io, this.root, this)
  this.block1 = block1Expr
  let len2Expr = this.io.readU4le()
  this.len2 = len2Expr
  let rawBlock2Expr = this.io.readBytes(int(this.len2))
  this.rawBlock2 = rawBlock2Expr
  let rawBlock2Io = newKaitaiStream(rawBlock2Expr)
  let block2Expr = BufferedStruct_Block.read(rawBlock2Io, this.root, this)
  this.block2 = block2Expr
  let finisherExpr = this.io.readU4le()
  this.finisher = finisherExpr

proc fromFile*(_: typedesc[BufferedStruct], filename: string): BufferedStruct =
  BufferedStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BufferedStruct_Block], io: KaitaiStream, root: KaitaiStruct, parent: BufferedStruct): BufferedStruct_Block =
  template this: untyped = result
  this = new(BufferedStruct_Block)
  let root = if root == nil: cast[BufferedStruct](this) else: cast[BufferedStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  let number1Expr = this.io.readU4le()
  this.number1 = number1Expr
  let number2Expr = this.io.readU4le()
  this.number2 = number2Expr

proc fromFile*(_: typedesc[BufferedStruct_Block], filename: string): BufferedStruct_Block =
  BufferedStruct_Block.read(newKaitaiFileStream(filename), nil, nil)

