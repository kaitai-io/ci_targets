import ../../../runtime/nim/kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  Subblock* = ref SubblockObj
  SubblockObj* = object
    io: KaitaiStream
    root*: ExprSizeofType1
    parent*: ref RootObj
    a*: seq[byte]
  Block* = ref BlockObj
  BlockObj* = object
    io: KaitaiStream
    root*: ExprSizeofType1
    parent*: ref RootObj
    a*: uint8
    b*: uint32
    c*: seq[byte]
    d*: Subblock
  ExprSizeofType1* = ref ExprSizeofType1Obj
  ExprSizeofType1Obj* = object
    io: KaitaiStream
    root*: ExprSizeofType1
    parent*: ref RootObj
    sizeofBlockInst: proc(): int
    sizeofSubblockInst: proc(): int

# Subblock
proc read*(_: typedesc[Subblock], io: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): owned Subblock =
  result = new(Subblock)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let a = readBytes(io, int(4))
  result.a = a


proc fromFile*(_: typedesc[Subblock], filename: string): owned Subblock =
  Subblock.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var SubblockObj) =
  close(x.io)

# Block
proc read*(_: typedesc[Block], io: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): owned Block =
  result = new(Block)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let a = readU1(io)
  result.a = a
  let b = readU4le(io)
  result.b = b
  let c = readBytes(io, int(2))
  result.c = c
  let d = Subblock.read(io, root, result)
  result.d = d


proc fromFile*(_: typedesc[Block], filename: string): owned Block =
  Block.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var BlockObj) =
  close(x.io)

# ExprSizeofType1
template `.`*(a: ExprSizeofType1, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[ExprSizeofType1], io: KaitaiStream, root: ExprSizeofType1, parent: ref RootObj): owned ExprSizeofType1 =
  result = new(ExprSizeofType1)
  let root = if root == nil: cast[ExprSizeofType1](result) else: root
  result.io = io
  result.root = root
  result.parent = parent


  var sizeofBlockVal: Option[int]
  let sizeofBlock = proc(): int =
    if isNone(sizeofBlockVal):
      sizeofBlockVal = some(int(11))
    get(sizeofBlockVal)
  result.sizeofBlockInst = sizeofBlock
  var sizeofSubblockVal: Option[int]
  let sizeofSubblock = proc(): int =
    if isNone(sizeofSubblockVal):
      sizeofSubblockVal = some(int(4))
    get(sizeofSubblockVal)
  result.sizeofSubblockInst = sizeofSubblock

proc fromFile*(_: typedesc[ExprSizeofType1], filename: string): owned ExprSizeofType1 =
  ExprSizeofType1.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType1Obj) =
  close(x.io)

