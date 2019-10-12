import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  StrLiterals2* = ref StrLiterals2Obj
  StrLiterals2Obj* = object
    io: KaitaiStream
    root*: StrLiterals2
    parent*: ref RootObj
    dollar1Inst: proc(): string
    dollar2Inst: proc(): string
    hashInst: proc(): string
    atSignInst: proc(): string

# StrLiterals2
template `.`*(a: StrLiterals2, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[StrLiterals2], io: KaitaiStream, root: StrLiterals2, parent: ref RootObj): owned StrLiterals2 =
  result = new(StrLiterals2)
  let root = if root == nil: cast[StrLiterals2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent


  let shadow = result
  var dollar1: Option[string]
  result.dollar1Inst = proc(): string =
    if isNone(dollar1):
      dollar1 = some(string("$foo"))
    get(dollar1)
  var dollar2: Option[string]
  result.dollar2Inst = proc(): string =
    if isNone(dollar2):
      dollar2 = some(string("${foo}"))
    get(dollar2)
  var hash: Option[string]
  result.hashInst = proc(): string =
    if isNone(hash):
      hash = some(string("#{foo}"))
    get(hash)
  var atSign: Option[string]
  result.atSignInst = proc(): string =
    if isNone(atSign):
      atSign = some(string("@foo"))
    get(atSign)

proc fromFile*(_: typedesc[StrLiterals2], filename: string): owned StrLiterals2 =
  StrLiterals2.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var StrLiterals2Obj) =
  close(x.io)

