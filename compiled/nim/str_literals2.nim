import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  StrLiterals2* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    dollar1Inst*: string
    dollar2Inst*: string
    hashInst*: string
    atSignInst*: string

proc read*(_: typedesc[StrLiterals2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrLiterals2

proc dollar1*(this: StrLiterals2): string
proc dollar2*(this: StrLiterals2): string
proc hash*(this: StrLiterals2): string
proc atSign*(this: StrLiterals2): string

proc read*(_: typedesc[StrLiterals2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrLiterals2 =
  template this: untyped = result
  this = new(StrLiterals2)
  let root = if root == nil: cast[StrLiterals2](this) else: cast[StrLiterals2](root)
  this.io = io
  this.root = root
  this.parent = parent


proc dollar1(this: StrLiterals2): string = 
  if this.dollar1Inst.len != 0:
    return this.dollar1Inst
  this.dollar1Inst = string("$foo")
  if this.dollar1Inst.len != 0:
    return this.dollar1Inst

proc dollar2(this: StrLiterals2): string = 
  if this.dollar2Inst.len != 0:
    return this.dollar2Inst
  this.dollar2Inst = string("${foo}")
  if this.dollar2Inst.len != 0:
    return this.dollar2Inst

proc hash(this: StrLiterals2): string = 
  if this.hashInst.len != 0:
    return this.hashInst
  this.hashInst = string("#{foo}")
  if this.hashInst.len != 0:
    return this.hashInst

proc atSign(this: StrLiterals2): string = 
  if this.atSignInst.len != 0:
    return this.atSignInst
  this.atSignInst = string("@foo")
  if this.atSignInst.len != 0:
    return this.atSignInst

proc fromFile*(_: typedesc[StrLiterals2], filename: string): StrLiterals2 =
  StrLiterals2.read(newKaitaiFileStream(filename), nil, nil)

