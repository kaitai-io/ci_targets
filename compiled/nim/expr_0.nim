import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  Expr0* = ref Expr0Obj
  Expr0Obj* = object
    io: KaitaiStream
    root*: Expr0
    parent*: ref RootObj
    lenOf1*: uint16
    mustBeF7Inst: proc(): int
    mustBeAbc123Inst: proc(): string

# Expr0
template `.`*(a: Expr0, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[Expr0], io: KaitaiStream, root: Expr0, parent: ref RootObj): owned Expr0 =
  result = new(Expr0)
  let root = if root == nil: cast[Expr0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.lenOf1 = readU2le(io)

proc fromFile*(_: typedesc[Expr0], filename: string): owned Expr0 =
  Expr0.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var Expr0Obj) =
  close(x.io)

