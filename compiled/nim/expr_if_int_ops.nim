import kaitai_struct_nim_runtime
import options

type
  ExprIfIntOps* = ref object of KaitaiStruct
    `skip`*: seq[byte]
    `it`*: int16
    `boxed`*: int16
    `parent`*: KaitaiStruct
    `isEqBoxedInst`: bool
    `isEqBoxedInstFlag`: bool
    `isEqPrimInst`: bool
    `isEqPrimInstFlag`: bool

proc read*(_: typedesc[ExprIfIntOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIfIntOps

proc isEqBoxed*(this: ExprIfIntOps): bool
proc isEqPrim*(this: ExprIfIntOps): bool

proc read*(_: typedesc[ExprIfIntOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIfIntOps =
  template this: untyped = result
  this = new(ExprIfIntOps)
  let root = if root == nil: cast[ExprIfIntOps](this) else: cast[ExprIfIntOps](root)
  this.io = io
  this.root = root
  this.parent = parent

  let skipExpr = this.io.readBytes(int(2))
  this.skip = skipExpr
  if true:
    let itExpr = this.io.readS2le()
    this.it = itExpr
  if true:
    let boxedExpr = this.io.readS2le()
    this.boxed = boxedExpr

proc isEqBoxed(this: ExprIfIntOps): bool = 
  if this.isEqBoxedInstFlag:
    return this.isEqBoxedInst
  let isEqBoxedInstExpr = bool(this.it == this.boxed)
  this.isEqBoxedInst = isEqBoxedInstExpr
  this.isEqBoxedInstFlag = true
  return this.isEqBoxedInst

proc isEqPrim(this: ExprIfIntOps): bool = 
  if this.isEqPrimInstFlag:
    return this.isEqPrimInst
  let isEqPrimInstExpr = bool(this.it == 16705)
  this.isEqPrimInst = isEqPrimInstExpr
  this.isEqPrimInstFlag = true
  return this.isEqPrimInst

proc fromFile*(_: typedesc[ExprIfIntOps], filename: string): ExprIfIntOps =
  ExprIfIntOps.read(newKaitaiFileStream(filename), nil, nil)

