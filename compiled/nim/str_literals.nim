import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  StrLiterals* = ref StrLiteralsObj
  StrLiteralsObj* = object
    io: KaitaiStream
    root*: StrLiterals
    parent*: ref RootObj
    octalEatup2Inst: proc(): string
    backslashesInst: proc(): string
    octalEatupInst: proc(): string
    doubleQuotesInst: proc(): string
    complexStrInst: proc(): string

# StrLiterals
template `.`*(a: StrLiterals, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[StrLiterals], io: KaitaiStream, root: StrLiterals, parent: ref RootObj): owned StrLiterals =
  result = new(StrLiterals)
  let root = if root == nil: cast[StrLiterals](result) else: root
  result.io = io
  result.root = root
  result.parent = parent


proc fromFile*(_: typedesc[StrLiterals], filename: string): owned StrLiterals =
  StrLiterals.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var StrLiteralsObj) =
  close(x.io)

