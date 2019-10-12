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


  let shadow = result
  var octalEatup2: Option[string]
  result.octalEatup2Inst = proc(): string =
    if isNone(octalEatup2):
      octalEatup2 = some(string("\0022"))
    get(octalEatup2)
  var backslashes: Option[string]
  result.backslashesInst = proc(): string =
    if isNone(backslashes):
      backslashes = some(string("\\\\\\"))
    get(backslashes)
  var octalEatup: Option[string]
  result.octalEatupInst = proc(): string =
    if isNone(octalEatup):
      octalEatup = some(string("\00022"))
    get(octalEatup)
  var doubleQuotes: Option[string]
  result.doubleQuotesInst = proc(): string =
    if isNone(doubleQuotes):
      doubleQuotes = some(string("\"\"\""))
    get(doubleQuotes)
  var complexStr: Option[string]
  result.complexStrInst = proc(): string =
    if isNone(complexStr):
      complexStr = some(string("\000\001\002\007\010\n\r\t\013\014\033=\007\n$\u263b"))
    get(complexStr)

proc fromFile*(_: typedesc[StrLiterals], filename: string): owned StrLiterals =
  StrLiterals.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var StrLiteralsObj) =
  close(x.io)

