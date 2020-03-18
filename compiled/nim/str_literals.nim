import kaitai_struct_nim_runtime
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


  var octalEatup2Val: Option[string]
  let octalEatup2 = proc(): string =
    if isNone(octalEatup2Val):
      octalEatup2Val = some(string("\0022"))
    get(octalEatup2Val)
  result.octalEatup2Inst = octalEatup2
  var backslashesVal: Option[string]
  let backslashes = proc(): string =
    if isNone(backslashesVal):
      backslashesVal = some(string("\\\\\\"))
    get(backslashesVal)
  result.backslashesInst = backslashes
  var octalEatupVal: Option[string]
  let octalEatup = proc(): string =
    if isNone(octalEatupVal):
      octalEatupVal = some(string("\00022"))
    get(octalEatupVal)
  result.octalEatupInst = octalEatup
  var doubleQuotesVal: Option[string]
  let doubleQuotes = proc(): string =
    if isNone(doubleQuotesVal):
      doubleQuotesVal = some(string("\"\"\""))
    get(doubleQuotesVal)
  result.doubleQuotesInst = doubleQuotes
  var complexStrVal: Option[string]
  let complexStr = proc(): string =
    if isNone(complexStrVal):
      complexStrVal = some(string("\000\001\002\007\010\n\r\t\013\014\033=\007\n$\u263b"))
    get(complexStrVal)
  result.complexStrInst = complexStr

proc fromFile*(_: typedesc[StrLiterals], filename: string): owned StrLiterals =
  StrLiterals.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrLiteralsObj) =
  close(x.io)

