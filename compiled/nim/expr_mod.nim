import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  ExprMod* = ref ExprModObj
  ExprModObj* = object
    io: KaitaiStream
    root*: ExprMod
    parent*: ref RootObj
    intU*: uint32
    intS*: int32
    modPosConstInst: proc(): int
    modNegConstInst: proc(): int
    modPosSeqInst: proc(): int
    modNegSeqInst: proc(): int

# ExprMod
template `.`*(a: ExprMod, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[ExprMod], io: KaitaiStream, root: ExprMod, parent: ref RootObj): owned ExprMod =
  result = new(ExprMod)
  let root = if root == nil: cast[ExprMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.intU = readU4le(io)
  result.intS = readS4le(io)

proc fromFile*(_: typedesc[ExprMod], filename: string): owned ExprMod =
  ExprMod.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprModObj) =
  close(x.io)

