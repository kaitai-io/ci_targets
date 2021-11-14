import kaitai_struct_nim_runtime
import options

type
  StrLiterals2* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `dollar1Inst`: string
    `dollar1InstFlag`: bool
    `dollar2Inst`: string
    `dollar2InstFlag`: bool
    `hashInst`: string
    `hashInstFlag`: bool
    `atSignInst`: string
    `atSignInstFlag`: bool

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
  if this.dollar1InstFlag:
    return this.dollar1Inst
  let dollar1InstExpr = string("$foo")
  this.dollar1Inst = dollar1InstExpr
  this.dollar1InstFlag = true
  return this.dollar1Inst

proc dollar2(this: StrLiterals2): string = 
  if this.dollar2InstFlag:
    return this.dollar2Inst
  let dollar2InstExpr = string("${foo}")
  this.dollar2Inst = dollar2InstExpr
  this.dollar2InstFlag = true
  return this.dollar2Inst

proc hash(this: StrLiterals2): string = 
  if this.hashInstFlag:
    return this.hashInst
  let hashInstExpr = string("#{foo}")
  this.hashInst = hashInstExpr
  this.hashInstFlag = true
  return this.hashInst

proc atSign(this: StrLiterals2): string = 
  if this.atSignInstFlag:
    return this.atSignInst
  let atSignInstExpr = string("@foo")
  this.atSignInst = atSignInstExpr
  this.atSignInstFlag = true
  return this.atSignInst

proc fromFile*(_: typedesc[StrLiterals2], filename: string): StrLiterals2 =
  StrLiterals2.read(newKaitaiFileStream(filename), nil, nil)

