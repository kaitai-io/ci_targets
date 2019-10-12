import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  Block* = ref BlockObj
  BlockObj* = object
    io: KaitaiStream
    root*: ExprSizeofType0
    parent*: ref RootObj
    a*: uint8
    b*: uint32
    c*: seq[byte]
  ExprSizeofType0* = ref ExprSizeofType0Obj
  ExprSizeofType0Obj* = object
    io: KaitaiStream
    root*: ExprSizeofType0
    parent*: ref RootObj
    sizeofBlockInst: proc(): int

# Block
proc read*(_: typedesc[Block], io: KaitaiStream, root: ExprSizeofType0, parent: ref RootObj): owned Block =
  result = new(Block)
  let root = if root == nil: cast[ExprSizeofType0](result) else: root
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

# ExprSizeofType0
template `.`*(a: ExprSizeofType0, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[ExprSizeofType0], io: KaitaiStream, root: ExprSizeofType0, parent: ref RootObj): owned ExprSizeofType0 =
  result = new(ExprSizeofType0)
  let root = if root == nil: cast[ExprSizeofType0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent


  let shadow = result
  var sizeofBlock: Option[int]
  result.sizeofBlockInst = proc(): int =
    if isNone(sizeofBlock):
      sizeofBlock = some(int(7))
    get(sizeofBlock)

proc fromFile*(_: typedesc[ExprSizeofType0], filename: string): owned ExprSizeofType0 =
  ExprSizeofType0.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprSizeofType0Obj) =
  close(x.io)

