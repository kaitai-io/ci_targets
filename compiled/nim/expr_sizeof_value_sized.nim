import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  Block* = ref BlockObj
  BlockObj* = object
    io: KaitaiStream
    root*: ExprSizeofValueSized
    parent*: ExprSizeofValueSized
    a*: uint8
    b*: uint32
    c*: seq[byte]
  ExprSizeofValueSized* = ref ExprSizeofValueSizedObj
  ExprSizeofValueSizedObj* = object
    io: KaitaiStream
    root*: ExprSizeofValueSized
    parent*: ref RootObj
    block1*: Block
    more*: uint16
    selfSizeofInst: proc(): int
    sizeofBlockInst: proc(): int
    sizeofBlockBInst: proc(): int
    sizeofBlockAInst: proc(): int
    sizeofBlockCInst: proc(): int

# Block
proc read*(_: typedesc[Block], io: KaitaiStream, root: ExprSizeofValueSized, parent: ExprSizeofValueSized): owned Block =
  result = new(Block)
  let root = if root == nil: cast[ExprSizeofValueSized](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.a = readU1(io)
  result.b = readU4le(io)
  result.c = readBytes(io, int(2))

proc fromFile*(_: typedesc[Block], filename: string): owned Block =
  Block.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var BlockObj) =
  close(x.io)

# ExprSizeofValueSized
template `.`*(a: ExprSizeofValueSized, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[ExprSizeofValueSized], io: KaitaiStream, root: ExprSizeofValueSized, parent: ref RootObj): owned ExprSizeofValueSized =
  result = new(ExprSizeofValueSized)
  let root = if root == nil: cast[ExprSizeofValueSized](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.block1 = Block.read(io, root, result)
  result.more = readU2le(io)

proc fromFile*(_: typedesc[ExprSizeofValueSized], filename: string): owned ExprSizeofValueSized =
  ExprSizeofValueSized.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValueSizedObj) =
  close(x.io)

