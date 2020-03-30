import kaitai_struct_nim_runtime
import options

type
  StrLiterals2* = ref StrLiterals2Obj
  StrLiterals2Obj* = object
    io*: KaitaiStream
    root*: StrLiterals2
    parent*: ref RootObj
    dollar1Inst*: Option[string]
    dollar2Inst*: Option[string]
    hashInst*: Option[string]
    atSignInst*: Option[string]

## StrLiterals2
proc dollar1*(this: StrLiterals2): string
proc dollar2*(this: StrLiterals2): string
proc hash*(this: StrLiterals2): string
proc atSign*(this: StrLiterals2): string
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

proc read*(_: typedesc[StrLiterals2], io: KaitaiStream, root: StrLiterals2, parent: ref RootObj): StrLiterals2 =
  let this = new(StrLiterals2)
  let root = if root == nil: cast[StrLiterals2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[StrLiterals2], filename: string): StrLiterals2 =
  StrLiterals2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrLiterals2Obj) =
  close(x.io)

