import ../../../runtime/nim/kaitai_struct_nim_runtime
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

  let lenOf1 = readU2le(io)
  result.lenOf1 = lenOf1

  var mustBeF7Val: Option[int]
  let mustBeF7 = proc(): int =
    if isNone(mustBeF7Val):
      mustBeF7Val = some(int((7 + 240)))
    get(mustBeF7Val)
  result.mustBeF7Inst = mustBeF7
  var mustBeAbc123Val: Option[string]
  let mustBeAbc123 = proc(): string =
    if isNone(mustBeAbc123Val):
      mustBeAbc123Val = some(string("abc" & "123"))
    get(mustBeAbc123Val)
  result.mustBeAbc123Inst = mustBeAbc123

proc fromFile*(_: typedesc[Expr0], filename: string): owned Expr0 =
  Expr0.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var Expr0Obj) =
  close(x.io)

