import kaitai_struct_nim_runtime
import options

type
  StrLiterals* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `backslashesInst`: string
    `backslashesInstFlag`: bool
    `complexStrInst`: string
    `complexStrInstFlag`: bool
    `doubleQuotesInst`: string
    `doubleQuotesInstFlag`: bool
    `octalEatupInst`: string
    `octalEatupInstFlag`: bool
    `octalEatup2Inst`: string
    `octalEatup2InstFlag`: bool

proc read*(_: typedesc[StrLiterals], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrLiterals

proc backslashes*(this: StrLiterals): string
proc complexStr*(this: StrLiterals): string
proc doubleQuotes*(this: StrLiterals): string
proc octalEatup*(this: StrLiterals): string
proc octalEatup2*(this: StrLiterals): string

proc read*(_: typedesc[StrLiterals], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrLiterals =
  template this: untyped = result
  this = new(StrLiterals)
  let root = if root == nil: cast[StrLiterals](this) else: cast[StrLiterals](root)
  this.io = io
  this.root = root
  this.parent = parent


proc backslashes(this: StrLiterals): string = 
  if this.backslashesInstFlag:
    return this.backslashesInst
  let backslashesInstExpr = string("\\\\\\")
  this.backslashesInst = backslashesInstExpr
  this.backslashesInstFlag = true
  return this.backslashesInst

proc complexStr(this: StrLiterals): string = 
  if this.complexStrInstFlag:
    return this.complexStrInst
  let complexStrInstExpr = string("\000\001\002\007\010\n\r\t\013\014\033=\007\n$\u263b")
  this.complexStrInst = complexStrInstExpr
  this.complexStrInstFlag = true
  return this.complexStrInst

proc doubleQuotes(this: StrLiterals): string = 
  if this.doubleQuotesInstFlag:
    return this.doubleQuotesInst
  let doubleQuotesInstExpr = string("\"\"\"")
  this.doubleQuotesInst = doubleQuotesInstExpr
  this.doubleQuotesInstFlag = true
  return this.doubleQuotesInst

proc octalEatup(this: StrLiterals): string = 
  if this.octalEatupInstFlag:
    return this.octalEatupInst
  let octalEatupInstExpr = string("\00022")
  this.octalEatupInst = octalEatupInstExpr
  this.octalEatupInstFlag = true
  return this.octalEatupInst

proc octalEatup2(this: StrLiterals): string = 
  if this.octalEatup2InstFlag:
    return this.octalEatup2Inst
  let octalEatup2InstExpr = string("\0022")
  this.octalEatup2Inst = octalEatup2InstExpr
  this.octalEatup2InstFlag = true
  return this.octalEatup2Inst

proc fromFile*(_: typedesc[StrLiterals], filename: string): StrLiterals =
  StrLiterals.read(newKaitaiFileStream(filename), nil, nil)

