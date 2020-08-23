import kaitai_struct_nim_runtime
import options

type
  StrLiterals* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `octalEatup2Inst`*: string
    `backslashesInst`*: string
    `octalEatupInst`*: string
    `doubleQuotesInst`*: string
    `complexStrInst`*: string

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
  let octalEatup2InstExpr = string("\0022")
  this.octalEatup2Inst = octalEatup2InstExpr
  if this.octalEatup2Inst.len != 0:
    return this.octalEatup2Inst

proc backslashes(this: StrLiterals): string = 
  if this.backslashesInst.len != 0:
    return this.backslashesInst
  let backslashesInstExpr = string("\\\\\\")
  this.backslashesInst = backslashesInstExpr
  if this.backslashesInst.len != 0:
    return this.backslashesInst

proc octalEatup(this: StrLiterals): string = 
  if this.octalEatupInst.len != 0:
    return this.octalEatupInst
  let octalEatupInstExpr = string("\00022")
  this.octalEatupInst = octalEatupInstExpr
  if this.octalEatupInst.len != 0:
    return this.octalEatupInst

proc doubleQuotes(this: StrLiterals): string = 
  if this.doubleQuotesInst.len != 0:
    return this.doubleQuotesInst
  let doubleQuotesInstExpr = string("\"\"\"")
  this.doubleQuotesInst = doubleQuotesInstExpr
  if this.doubleQuotesInst.len != 0:
    return this.doubleQuotesInst

proc complexStr(this: StrLiterals): string = 
  if this.complexStrInst.len != 0:
    return this.complexStrInst
  let complexStrInstExpr = string("\000\001\002\007\010\n\r\t\013\014\033=\007\n$\u263b")
  this.complexStrInst = complexStrInstExpr
  if this.complexStrInst.len != 0:
    return this.complexStrInst

proc fromFile*(_: typedesc[StrLiterals], filename: string): StrLiterals =
  StrLiterals.read(newKaitaiFileStream(filename), nil, nil)

