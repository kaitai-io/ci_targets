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

  let shadow = result
  var modPosConst: Option[int]
  result.modPosConstInst = proc(): int =
    if isNone(modPosConst):
      modPosConst = some(int((9837 %%% 13)))
    get(modPosConst)
  var modNegConst: Option[int]
  result.modNegConstInst = proc(): int =
    if isNone(modNegConst):
      modNegConst = some(int((-9837 %%% 13)))
    get(modNegConst)
  var modPosSeq: Option[int]
  result.modPosSeqInst = proc(): int =
    if isNone(modPosSeq):
      modPosSeq = some(int((shadow.intU %%% 13)))
    get(modPosSeq)
  var modNegSeq: Option[int]
  result.modNegSeqInst = proc(): int =
    if isNone(modNegSeq):
      modNegSeq = some(int((shadow.intS %%% 13)))
    get(modNegSeq)

proc fromFile*(_: typedesc[ExprMod], filename: string): owned ExprMod =
  ExprMod.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprModObj) =
  close(x.io)

