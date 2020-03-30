import kaitai_struct_nim_runtime
import options

type
  StrLiterals* = ref StrLiteralsObj
  StrLiteralsObj* = object
    io*: KaitaiStream
    root*: StrLiterals
    parent*: ref RootObj
    octalEatup2Inst*: Option[string]
    backslashesInst*: Option[string]
    octalEatupInst*: Option[string]
    doubleQuotesInst*: Option[string]
    complexStrInst*: Option[string]

## StrLiterals
proc octalEatup2*(this: StrLiterals): string
proc backslashes*(this: StrLiterals): string
proc octalEatup*(this: StrLiterals): string
proc doubleQuotes*(this: StrLiterals): string
proc complexStr*(this: StrLiterals): string
proc octalEatup2(this: StrLiterals): string = 
  if isSome(this.octalEatup2Inst):
    return get(this.octalEatup2Inst)
  this.octalEatup2Inst = some("\0022")
  return get(this.octalEatup2Inst)

proc backslashes(this: StrLiterals): string = 
  if isSome(this.backslashesInst):
    return get(this.backslashesInst)
  this.backslashesInst = some("\\\\\\")
  return get(this.backslashesInst)

proc octalEatup(this: StrLiterals): string = 
  if isSome(this.octalEatupInst):
    return get(this.octalEatupInst)
  this.octalEatupInst = some("\00022")
  return get(this.octalEatupInst)

proc doubleQuotes(this: StrLiterals): string = 
  if isSome(this.doubleQuotesInst):
    return get(this.doubleQuotesInst)
  this.doubleQuotesInst = some("\"\"\"")
  return get(this.doubleQuotesInst)

proc complexStr(this: StrLiterals): string = 
  if isSome(this.complexStrInst):
    return get(this.complexStrInst)
  this.complexStrInst = some("\000\001\002\007\010\n\r\t\013\014\033=\007\n$\u263b")
  return get(this.complexStrInst)

proc read*(_: typedesc[StrLiterals], io: KaitaiStream, root: StrLiterals, parent: ref RootObj): StrLiterals =
  let this = new(StrLiterals)
  let root = if root == nil: cast[StrLiterals](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[StrLiterals], filename: string): StrLiterals =
  StrLiterals.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrLiteralsObj) =
  close(x.io)

