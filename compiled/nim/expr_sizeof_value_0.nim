import ../runtime/nim/kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  Block* = ref BlockObj
  BlockObj* = object
    io: KaitaiStream
    root*: ExprSizeofValue0
    parent*: ExprSizeofValue0
    a*: uint8
    b*: uint32
    c*: seq[byte]
  ExprSizeofValue0* = ref ExprSizeofValue0Obj
  ExprSizeofValue0Obj* = object
    io: KaitaiStream
    root*: ExprSizeofValue0
    parent*: ref RootObj
    block1*: Block
    more*: uint16
    selfSizeofInst: proc(): int
    sizeofBlockInst: proc(): int
    sizeofBlockBInst: proc(): int
    sizeofBlockAInst: proc(): int
    sizeofBlockCInst: proc(): int

# Block
proc read*(_: typedesc[Block], io: KaitaiStream, root: ExprSizeofValue0, parent: ExprSizeofValue0): owned Block =
  result = new(Block)
  let root = if root == nil: cast[ExprSizeofValue0](result) else: root
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

# ExprSizeofValue0
template `.`*(a: ExprSizeofValue0, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[ExprSizeofValue0], io: KaitaiStream, root: ExprSizeofValue0, parent: ref RootObj): owned ExprSizeofValue0 =
  result = new(ExprSizeofValue0)
  let root = if root == nil: cast[ExprSizeofValue0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let block1 = Block.read(io, root, result)
  result.block1 = block1
  let more = readU2le(io)
  result.more = more

  var selfSizeofVal: Option[int]
  let selfSizeof = proc(): int =
    if isNone(selfSizeofVal):
      selfSizeofVal = some(int(9))
    get(selfSizeofVal)
  result.selfSizeofInst = selfSizeof
  var sizeofBlockVal: Option[int]
  let sizeofBlock = proc(): int =
    if isNone(sizeofBlockVal):
      sizeofBlockVal = some(int(7))
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

proc fromFile*(_: typedesc[ExprSizeofValue0], filename: string): owned ExprSizeofValue0 =
  ExprSizeofValue0.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofValue0Obj) =
  close(x.io)

