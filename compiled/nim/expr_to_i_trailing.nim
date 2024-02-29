import kaitai_struct_nim_runtime
import options

type
  ExprToITrailing* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `toIGarbageInst`: int
    `toIGarbageInstFlag`: bool
    `toIR10Inst`: int
    `toIR10InstFlag`: bool
    `toIR16Inst`: int
    `toIR16InstFlag`: bool

proc read*(_: typedesc[ExprToITrailing], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprToITrailing

proc toIGarbage*(this: ExprToITrailing): int
proc toIR10*(this: ExprToITrailing): int
proc toIR16*(this: ExprToITrailing): int

proc read*(_: typedesc[ExprToITrailing], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprToITrailing =
  template this: untyped = result
  this = new(ExprToITrailing)
  let root = if root == nil: cast[ExprToITrailing](this) else: cast[ExprToITrailing](root)
  this.io = io
  this.root = root
  this.parent = parent


proc toIGarbage(this: ExprToITrailing): int = 
  if this.toIGarbageInstFlag:
    return this.toIGarbageInst
  let toIGarbageInstExpr = int("123_.^".parseInt(10))
  this.toIGarbageInst = toIGarbageInstExpr
  this.toIGarbageInstFlag = true
  return this.toIGarbageInst

proc toIR10(this: ExprToITrailing): int = 
  if this.toIR10InstFlag:
    return this.toIR10Inst
  let toIR10InstExpr = int("9173abc".parseInt(10))
  this.toIR10Inst = toIR10InstExpr
  this.toIR10InstFlag = true
  return this.toIR10Inst

proc toIR16(this: ExprToITrailing): int = 
  if this.toIR16InstFlag:
    return this.toIR16Inst
  let toIR16InstExpr = int("9173abc".parseInt(16))
  this.toIR16Inst = toIR16InstExpr
  this.toIR16InstFlag = true
  return this.toIR16Inst

proc fromFile*(_: typedesc[ExprToITrailing], filename: string): ExprToITrailing =
  ExprToITrailing.read(newKaitaiFileStream(filename), nil, nil)

