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


proc fromFile*(_: typedesc[StrLiterals2], filename: string): owned StrLiterals2 =
  StrLiterals2.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var StrLiterals2Obj) =
  close(x.io)

