import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  StrLiterals* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    octalEatup2Inst*: string
    backslashesInst*: string
    octalEatupInst*: string
    doubleQuotesInst*: string
    complexStrInst*: string

proc read*(_: typedesc[StrLiterals], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrLiterals

proc octalEatup2*(this: StrLiterals): string
proc backslashes*(this: StrLiterals): string
proc octalEatup*(this: StrLiterals): string
proc doubleQuotes*(this: StrLiterals): string
proc complexStr*(this: StrLiterals): string

proc read*(_: typedesc[StrLiterals], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrLiterals =
  template this: untyped = result
  this = new(StrLiterals)
  let root = if root == nil: cast[StrLiterals](this) else: cast[StrLiterals](root)
  this.io = io
  this.root = root
  this.parent = parent


proc octalEatup2(this: StrLiterals): string = 
  if this.octalEatup2Inst.len != 0:
    return this.octalEatup2Inst
  this.octalEatup2Inst = string("\0022")
  if this.octalEatup2Inst.len != 0:
    return this.octalEatup2Inst

proc backslashes(this: StrLiterals): string = 
  if this.backslashesInst.len != 0:
    return this.backslashesInst
  this.backslashesInst = string("\\\\\\")
  if this.backslashesInst.len != 0:
    return this.backslashesInst

proc octalEatup(this: StrLiterals): string = 
  if this.octalEatupInst.len != 0:
    return this.octalEatupInst
  this.octalEatupInst = string("\00022")
  if this.octalEatupInst.len != 0:
    return this.octalEatupInst

proc doubleQuotes(this: StrLiterals): string = 
  if this.doubleQuotesInst.len != 0:
    return this.doubleQuotesInst
  this.doubleQuotesInst = string("\"\"\"")
  if this.doubleQuotesInst.len != 0:
    return this.doubleQuotesInst

proc complexStr(this: StrLiterals): string = 
  if this.complexStrInst.len != 0:
    return this.complexStrInst
  this.complexStrInst = string("\000\001\002\007\010\n\r\t\013\014\033=\007\n$\u263b")
  if this.complexStrInst.len != 0:
    return this.complexStrInst

proc fromFile*(_: typedesc[StrLiterals], filename: string): StrLiterals =
  StrLiterals.read(newKaitaiFileStream(filename), nil, nil)

