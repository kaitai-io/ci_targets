import kaitai_struct_nim_runtime
import options

type
  IntegersDoubleOverflow* = ref object of KaitaiStruct
    `signedSafeMinBe`*: int64
    `signedSafeMinLe`*: int64
    `signedSafeMaxBe`*: int64
    `signedSafeMaxLe`*: int64
    `signedUnsafeNegBe`*: int64
    `signedUnsafeNegLe`*: int64
    `signedUnsafePosBe`*: int64
    `signedUnsafePosLe`*: int64
    `parent`*: KaitaiStruct
    `unsignedSafeMaxBeInst`*: uint64
    `unsignedSafeMaxLeInst`*: uint64
    `unsignedUnsafePosBeInst`*: uint64
    `unsignedUnsafePosLeInst`*: uint64

proc read*(_: typedesc[IntegersDoubleOverflow], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IntegersDoubleOverflow

proc unsignedSafeMaxBe*(this: IntegersDoubleOverflow): uint64
proc unsignedSafeMaxLe*(this: IntegersDoubleOverflow): uint64
proc unsignedUnsafePosBe*(this: IntegersDoubleOverflow): uint64
proc unsignedUnsafePosLe*(this: IntegersDoubleOverflow): uint64

proc read*(_: typedesc[IntegersDoubleOverflow], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IntegersDoubleOverflow =
  template this: untyped = result
  this = new(IntegersDoubleOverflow)
  let root = if root == nil: cast[IntegersDoubleOverflow](this) else: cast[IntegersDoubleOverflow](root)
  this.io = io
  this.root = root
  this.parent = parent

  let signedSafeMinBeExpr = this.io.readS8be()
  this.signedSafeMinBe = signedSafeMinBeExpr
  let signedSafeMinLeExpr = this.io.readS8le()
  this.signedSafeMinLe = signedSafeMinLeExpr
  let signedSafeMaxBeExpr = this.io.readS8be()
  this.signedSafeMaxBe = signedSafeMaxBeExpr
  let signedSafeMaxLeExpr = this.io.readS8le()
  this.signedSafeMaxLe = signedSafeMaxLeExpr
  let signedUnsafeNegBeExpr = this.io.readS8be()
  this.signedUnsafeNegBe = signedUnsafeNegBeExpr
  let signedUnsafeNegLeExpr = this.io.readS8le()
  this.signedUnsafeNegLe = signedUnsafeNegLeExpr
  let signedUnsafePosBeExpr = this.io.readS8be()
  this.signedUnsafePosBe = signedUnsafePosBeExpr
  let signedUnsafePosLeExpr = this.io.readS8le()
  this.signedUnsafePosLe = signedUnsafePosLeExpr

proc unsignedSafeMaxBe(this: IntegersDoubleOverflow): uint64 = 
  if this.unsignedSafeMaxBeInst != nil:
    return this.unsignedSafeMaxBeInst
  let pos = this.io.pos()
  this.io.seek(int(16))
  let unsignedSafeMaxBeInstExpr = this.io.readU8be()
  this.unsignedSafeMaxBeInst = unsignedSafeMaxBeInstExpr
  this.io.seek(pos)
  if this.unsignedSafeMaxBeInst != nil:
    return this.unsignedSafeMaxBeInst

proc unsignedSafeMaxLe(this: IntegersDoubleOverflow): uint64 = 
  if this.unsignedSafeMaxLeInst != nil:
    return this.unsignedSafeMaxLeInst
  let pos = this.io.pos()
  this.io.seek(int(24))
  let unsignedSafeMaxLeInstExpr = this.io.readU8le()
  this.unsignedSafeMaxLeInst = unsignedSafeMaxLeInstExpr
  this.io.seek(pos)
  if this.unsignedSafeMaxLeInst != nil:
    return this.unsignedSafeMaxLeInst

proc unsignedUnsafePosBe(this: IntegersDoubleOverflow): uint64 = 
  if this.unsignedUnsafePosBeInst != nil:
    return this.unsignedUnsafePosBeInst
  let pos = this.io.pos()
  this.io.seek(int(48))
  let unsignedUnsafePosBeInstExpr = this.io.readU8be()
  this.unsignedUnsafePosBeInst = unsignedUnsafePosBeInstExpr
  this.io.seek(pos)
  if this.unsignedUnsafePosBeInst != nil:
    return this.unsignedUnsafePosBeInst

proc unsignedUnsafePosLe(this: IntegersDoubleOverflow): uint64 = 
  if this.unsignedUnsafePosLeInst != nil:
    return this.unsignedUnsafePosLeInst
  let pos = this.io.pos()
  this.io.seek(int(56))
  let unsignedUnsafePosLeInstExpr = this.io.readU8le()
  this.unsignedUnsafePosLeInst = unsignedUnsafePosLeInstExpr
  this.io.seek(pos)
  if this.unsignedUnsafePosLeInst != nil:
    return this.unsignedUnsafePosLeInst

proc fromFile*(_: typedesc[IntegersDoubleOverflow], filename: string): IntegersDoubleOverflow =
  IntegersDoubleOverflow.read(newKaitaiFileStream(filename), nil, nil)

