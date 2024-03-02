import kaitai_struct_nim_runtime
import options
import strutils

type
  ExprFstring0* = ref object of KaitaiStruct
    `seqStr`*: string
    `seqInt`*: uint8
    `parent`*: KaitaiStruct
    `emptyInst`: string
    `emptyInstFlag`: bool
    `headAndIntInst`: string
    `headAndIntInstFlag`: bool
    `headAndIntLiteralInst`: string
    `headAndIntLiteralInstFlag`: bool
    `headAndStrInst`: string
    `headAndStrInstFlag`: bool
    `headAndStrLiteralInst`: string
    `headAndStrLiteralInstFlag`: bool
    `literalInst`: string
    `literalInstFlag`: bool
    `literalWithEscapesInst`: string
    `literalWithEscapesInstFlag`: bool

proc read*(_: typedesc[ExprFstring0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprFstring0

proc empty*(this: ExprFstring0): string
proc headAndInt*(this: ExprFstring0): string
proc headAndIntLiteral*(this: ExprFstring0): string
proc headAndStr*(this: ExprFstring0): string
proc headAndStrLiteral*(this: ExprFstring0): string
proc literal*(this: ExprFstring0): string
proc literalWithEscapes*(this: ExprFstring0): string

proc read*(_: typedesc[ExprFstring0], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprFstring0 =
  template this: untyped = result
  this = new(ExprFstring0)
  let root = if root == nil: cast[ExprFstring0](this) else: cast[ExprFstring0](root)
  this.io = io
  this.root = root
  this.parent = parent

  let seqStrExpr = encode(this.io.readBytes(int(5)), "ASCII")
  this.seqStr = seqStrExpr
  let seqIntExpr = this.io.readU1()
  this.seqInt = seqIntExpr

proc empty(this: ExprFstring0): string = 
  if this.emptyInstFlag:
    return this.emptyInst
  let emptyInstExpr = string("")
  this.emptyInst = emptyInstExpr
  this.emptyInstFlag = true
  return this.emptyInst

proc headAndInt(this: ExprFstring0): string = 
  if this.headAndIntInstFlag:
    return this.headAndIntInst
  let headAndIntInstExpr = string("abc=" + intToStr(int(this.seqInt)))
  this.headAndIntInst = headAndIntInstExpr
  this.headAndIntInstFlag = true
  return this.headAndIntInst

proc headAndIntLiteral(this: ExprFstring0): string = 
  if this.headAndIntLiteralInstFlag:
    return this.headAndIntLiteralInst
  let headAndIntLiteralInstExpr = string("abc=" + intToStr(int(123)))
  this.headAndIntLiteralInst = headAndIntLiteralInstExpr
  this.headAndIntLiteralInstFlag = true
  return this.headAndIntLiteralInst

proc headAndStr(this: ExprFstring0): string = 
  if this.headAndStrInstFlag:
    return this.headAndStrInst
  let headAndStrInstExpr = string("abc=" + this.seqStr)
  this.headAndStrInst = headAndStrInstExpr
  this.headAndStrInstFlag = true
  return this.headAndStrInst

proc headAndStrLiteral(this: ExprFstring0): string = 
  if this.headAndStrLiteralInstFlag:
    return this.headAndStrLiteralInst
  let headAndStrLiteralInstExpr = string("abc=" + "foo")
  this.headAndStrLiteralInst = headAndStrLiteralInstExpr
  this.headAndStrLiteralInstFlag = true
  return this.headAndStrLiteralInst

proc literal(this: ExprFstring0): string = 
  if this.literalInstFlag:
    return this.literalInst
  let literalInstExpr = string("abc")
  this.literalInst = literalInstExpr
  this.literalInstFlag = true
  return this.literalInst

proc literalWithEscapes(this: ExprFstring0): string = 
  if this.literalWithEscapesInstFlag:
    return this.literalWithEscapesInst
  let literalWithEscapesInstExpr = string("abc\n\tt")
  this.literalWithEscapesInst = literalWithEscapesInstExpr
  this.literalWithEscapesInstFlag = true
  return this.literalWithEscapesInst

proc fromFile*(_: typedesc[ExprFstring0], filename: string): ExprFstring0 =
  ExprFstring0.read(newKaitaiFileStream(filename), nil, nil)

