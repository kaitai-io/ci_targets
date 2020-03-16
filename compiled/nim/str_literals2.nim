import kaitai_struct_nim_runtime
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


  var dollar1Val: Option[string]
  let dollar1 = proc(): string =
    if isNone(dollar1Val):
      dollar1Val = some(string("$foo"))
    get(dollar1Val)
  result.dollar1Inst = dollar1
  var dollar2Val: Option[string]
  let dollar2 = proc(): string =
    if isNone(dollar2Val):
      dollar2Val = some(string("${foo}"))
    get(dollar2Val)
  result.dollar2Inst = dollar2
  var hashVal: Option[string]
  let hash = proc(): string =
    if isNone(hashVal):
      hashVal = some(string("#{foo}"))
    get(hashVal)
  result.hashInst = hash
  var atSignVal: Option[string]
  let atSign = proc(): string =
    if isNone(atSignVal):
      atSignVal = some(string("@foo"))
    get(atSignVal)
  result.atSignInst = atSign

proc fromFile*(_: typedesc[StrLiterals2], filename: string): owned StrLiterals2 =
  StrLiterals2.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var StrLiterals2Obj) =
  close(x.io)

