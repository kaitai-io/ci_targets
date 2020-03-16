import ../../kaitai_struct_nim_runtime/kaitai_struct_nim_runtime
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

  let a = readU1(io)
  result.a = a
  let b = readU4le(io)
  result.b = b
  let c = readBytes(io, int(2))
  result.c = c


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

  let block1 = readBytes(io, int(12))
  result.block1 = block1
  let more = readU2le(io)
  result.more = more

  var selfSizeofVal: Option[int]
  let selfSizeof = proc(): int =
    if isNone(selfSizeofVal):
      selfSizeofVal = some(int(14))
    get(selfSizeofVal)
  result.selfSizeofInst = selfSizeof
  var sizeofBlockVal: Option[int]
  let sizeofBlock = proc(): int =
    if isNone(sizeofBlockVal):
      sizeofBlockVal = some(int(12))
    get(sizeofBlockVal)
  result.sizeofBlockInst = sizeofBlock
  var sizeofBlockBVal: Option[int]
  let sizeofBlockB = proc(): int =
    if isNone(sizeofBlockBVal):
      sizeofBlockBVal = some(int(4))
    get(sizeofBlockBVal)
  result.sizeofBlockBInst = sizeofBlockB
  var sizeofBlockAVal: Option[int]
  let sizeofBlockA = proc(): int =
    if isNone(sizeofBlockAVal):
      sizeofBlockAVal = some(int(1))
    get(sizeofBlockAVal)
  result.sizeofBlockAInst = sizeofBlockA
  var sizeofBlockCVal: Option[int]
  let sizeofBlockC = proc(): int =
    if isNone(sizeofBlockCVal):
      sizeofBlockCVal = some(int(2))
    get(sizeofBlockCVal)
  result.sizeofBlockCInst = sizeofBlockC

proc fromFile*(_: typedesc[ExprSizeofValueSized], filename: string): owned ExprSizeofValueSized =
  ExprSizeofValueSized.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValueSizedObj) =
  close(x.io)

