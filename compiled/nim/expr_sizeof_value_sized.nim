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

  let shadow = result
  var selfSizeof: Option[int]
  result.selfSizeofInst = proc(): int =
    if isNone(selfSizeof):
      selfSizeof = some(int(14))
    get(selfSizeof)
  var sizeofBlock: Option[int]
  result.sizeofBlockInst = proc(): int =
    if isNone(sizeofBlock):
      sizeofBlock = some(int(12))
    get(sizeofBlock)
  var sizeofBlockB: Option[int]
  result.sizeofBlockBInst = proc(): int =
    if isNone(sizeofBlockB):
      sizeofBlockB = some(int(4))
    get(sizeofBlockB)
  var sizeofBlockA: Option[int]
  result.sizeofBlockAInst = proc(): int =
    if isNone(sizeofBlockA):
      sizeofBlockA = some(int(1))
    get(sizeofBlockA)
  var sizeofBlockC: Option[int]
  result.sizeofBlockCInst = proc(): int =
    if isNone(sizeofBlockC):
      sizeofBlockC = some(int(2))
    get(sizeofBlockC)

proc fromFile*(_: typedesc[ExprSizeofValueSized], filename: string): owned ExprSizeofValueSized =
  ExprSizeofValueSized.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValueSizedObj) =
  close(x.io)

