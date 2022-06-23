import kaitai_struct_nim_runtime
import options

type
  ExprBytesNonLiteral* = ref object of KaitaiStruct
    `one`*: uint8
    `two`*: uint8
    `parent`*: KaitaiStruct
    `calcBytesInst`: seq[byte]
    `calcBytesInstFlag`: bool

proc read*(_: typedesc[ExprBytesNonLiteral], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBytesNonLiteral

proc calcBytes*(this: ExprBytesNonLiteral): seq[byte]

proc read*(_: typedesc[ExprBytesNonLiteral], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBytesNonLiteral =
  template this: untyped = result
  this = new(ExprBytesNonLiteral)
  let root = if root == nil: cast[ExprBytesNonLiteral](this) else: cast[ExprBytesNonLiteral](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = this.io.readU1()
  this.one = oneExpr
  let twoExpr = this.io.readU1()
  this.two = twoExpr

proc calcBytes(this: ExprBytesNonLiteral): seq[byte] = 
  if this.calcBytesInstFlag:
    return this.calcBytesInst
  let calcBytesInstExpr = seq[byte](@[this.one, this.two])
  this.calcBytesInst = calcBytesInstExpr
  this.calcBytesInstFlag = true
  return this.calcBytesInst

proc fromFile*(_: typedesc[ExprBytesNonLiteral], filename: string): ExprBytesNonLiteral =
  ExprBytesNonLiteral.read(newKaitaiFileStream(filename), nil, nil)

