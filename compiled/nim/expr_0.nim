import kaitai_struct_nim_runtime
import options

type
  Expr0* = ref object of KaitaiStruct
    `lenOf1`*: uint16
    `parent`*: KaitaiStruct
    `mustBeF7Inst`*: int
    `mustBeAbc123Inst`*: string

proc read*(_: typedesc[Expr0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Expr0

proc mustBeF7*(this: Expr0): int
proc mustBeAbc123*(this: Expr0): string

proc read*(_: typedesc[Expr0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Expr0 =
  template this: untyped = result
  this = new(Expr0)
  let root = if root == nil: cast[Expr0](this) else: cast[Expr0](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenOf1Expr = this.io.readU2le()
  this.lenOf1 = lenOf1Expr

proc mustBeF7(this: Expr0): int = 
  if this.mustBeF7Inst != nil:
    return this.mustBeF7Inst
  let mustBeF7InstExpr = int((7 + 240))
  this.mustBeF7Inst = mustBeF7InstExpr
  if this.mustBeF7Inst != nil:
    return this.mustBeF7Inst

proc mustBeAbc123(this: Expr0): string = 
  if this.mustBeAbc123Inst.len != 0:
    return this.mustBeAbc123Inst
  let mustBeAbc123InstExpr = string(($"abc" & $"123"))
  this.mustBeAbc123Inst = mustBeAbc123InstExpr
  if this.mustBeAbc123Inst.len != 0:
    return this.mustBeAbc123Inst

proc fromFile*(_: typedesc[Expr0], filename: string): Expr0 =
  Expr0.read(newKaitaiFileStream(filename), nil, nil)

