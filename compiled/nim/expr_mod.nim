import ../../../runtime/nim/kaitai_struct_nim_runtime
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

  let intU = readU4le(io)
  result.intU = intU
  let intS = readS4le(io)
  result.intS = intS

  var modPosConstVal: Option[int]
  let modPosConst = proc(): int =
    if isNone(modPosConstVal):
      modPosConstVal = some(int((9837 %%% 13)))
    get(modPosConstVal)
  result.modPosConstInst = modPosConst
  var modNegConstVal: Option[int]
  let modNegConst = proc(): int =
    if isNone(modNegConstVal):
      modNegConstVal = some(int((-9837 %%% 13)))
    get(modNegConstVal)
  result.modNegConstInst = modNegConst
  var modPosSeqVal: Option[int]
  let modPosSeq = proc(): int =
    if isNone(modPosSeqVal):
      modPosSeqVal = some(int((intU %%% 13)))
    get(modPosSeqVal)
  result.modPosSeqInst = modPosSeq
  var modNegSeqVal: Option[int]
  let modNegSeq = proc(): int =
    if isNone(modNegSeqVal):
      modNegSeqVal = some(int((intS %%% 13)))
    get(modNegSeqVal)
  result.modNegSeqInst = modNegSeq

proc fromFile*(_: typedesc[ExprMod], filename: string): owned ExprMod =
  ExprMod.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprModObj) =
  close(x.io)

