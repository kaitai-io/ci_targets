import ../../runtime/nim/kaitai
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

  result.a = readBytes(io, int(4))

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

  result.a = readU1(io)
  result.b = readU4le(io)
  result.c = readBytes(io, int(2))
  result.d = Subblock.read(io, root, result)

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


proc fromFile*(_: typedesc[ExprSizeofType1], filename: string): owned ExprSizeofType1 =
  ExprSizeofType1.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType1Obj) =
  close(x.io)

