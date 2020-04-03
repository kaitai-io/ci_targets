import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  StrLiterals2* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    dollar1Inst*: Option[string]
    dollar2Inst*: Option[string]
    hashInst*: Option[string]
    atSignInst*: Option[string]

proc read*(_: typedesc[StrLiterals2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrLiterals2

proc dollar1*(this: StrLiterals2): string
proc dollar2*(this: StrLiterals2): string
proc hash*(this: StrLiterals2): string
proc atSign*(this: StrLiterals2): string

proc read*(_: typedesc[StrLiterals2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrLiterals2 =
  template this: untyped = result
  this = new(StrLiterals2)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc dollar1(this: StrLiterals2): string = 
  if isSome(this.dollar1Inst):
    return get(this.dollar1Inst)
  this.dollar1Inst = some("$foo")
  return get(this.dollar1Inst)

proc dollar2(this: StrLiterals2): string = 
  if isSome(this.dollar2Inst):
    return get(this.dollar2Inst)
  this.dollar2Inst = some("${foo}")
  return get(this.dollar2Inst)

proc hash(this: StrLiterals2): string = 
  if isSome(this.hashInst):
    return get(this.hashInst)
  this.hashInst = some("#{foo}")
  return get(this.hashInst)

proc atSign(this: StrLiterals2): string = 
  if isSome(this.atSignInst):
    return get(this.atSignInst)
  this.atSignInst = some("@foo")
  return get(this.atSignInst)

proc fromFile*(_: typedesc[StrLiterals2], filename: string): StrLiterals2 =
  StrLiterals2.read(newKaitaiFileStream(filename), nil, nil)

