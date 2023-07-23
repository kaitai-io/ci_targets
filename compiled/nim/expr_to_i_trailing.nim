import kaitai_struct_nim_runtime
import options

type
  ExprToITrailing* = ref object of KaitaiStruct
    `parent`*: KaitaiStruct
    `toIR10Inst`: int
    `toIR10InstFlag`: bool
    `toIR13Inst`: int
    `toIR13InstFlag`: bool
    `toIGarbageInst`: int
    `toIGarbageInstFlag`: bool

proc read*(_: typedesc[ExprToITrailing], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprToITrailing

proc toIR10*(this: ExprToITrailing): int
proc toIR13*(this: ExprToITrailing): int
proc toIGarbage*(this: ExprToITrailing): int

proc read*(_: typedesc[ExprToITrailing], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprToITrailing =
  template this: untyped = result
  this = new(ExprToITrailing)
  let root = if root == nil: cast[ExprToITrailing](this) else: cast[ExprToITrailing](root)
  this.io = io
  this.root = root
  this.parent = parent


proc toIR10(this: ExprToITrailing): int = 
  if this.toIR10InstFlag:
    return this.toIR10Inst
  let toIR10InstExpr = int("9173abc".parseInt(10))
  this.toIR10Inst = toIR10InstExpr
  this.toIR10InstFlag = true
  return this.toIR10Inst

proc toIR13(this: ExprToITrailing): int = 
  if this.toIR13InstFlag:
    return this.toIR13Inst
  let toIR13InstExpr = int("9173abc".parseInt(13))
  this.toIR13Inst = toIR13InstExpr
  this.toIR13InstFlag = true
  return this.toIR13Inst

proc toIGarbage(this: ExprToITrailing): int = 
  if this.toIGarbageInstFlag:
    return this.toIGarbageInst
  let toIGarbageInstExpr = int("123_.^".parseInt(10))
  this.toIGarbageInst = toIGarbageInstExpr
  this.toIGarbageInstFlag = true
  return this.toIGarbageInst

proc fromFile*(_: typedesc[ExprToITrailing], filename: string): ExprToITrailing =
  ExprToITrailing.read(newKaitaiFileStream(filename), nil, nil)

