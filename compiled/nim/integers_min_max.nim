import kaitai_struct_nim_runtime
import options

type
  IntegersMinMax* = ref object of KaitaiStruct
    `unsignedMin`*: IntegersMinMax_Unsigned
    `unsignedMax`*: IntegersMinMax_Unsigned
    `signedMin`*: IntegersMinMax_Signed
    `signedMax`*: IntegersMinMax_Signed
    `parent`*: KaitaiStruct
  IntegersMinMax_Signed* = ref object of KaitaiStruct
    `s1`*: int8
    `s2le`*: int16
    `s4le`*: int32
    `s8le`*: int64
    `s2be`*: int16
    `s4be`*: int32
    `s8be`*: int64
    `parent`*: IntegersMinMax
  IntegersMinMax_Unsigned* = ref object of KaitaiStruct
    `u1`*: uint8
    `u2le`*: uint16
    `u4le`*: uint32
    `u8le`*: uint64
    `u2be`*: uint16
    `u4be`*: uint32
    `u8be`*: uint64
    `parent`*: IntegersMinMax

proc read*(_: typedesc[IntegersMinMax], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IntegersMinMax
proc read*(_: typedesc[IntegersMinMax_Signed], io: KaitaiStream, root: KaitaiStruct, parent: IntegersMinMax): IntegersMinMax_Signed
proc read*(_: typedesc[IntegersMinMax_Unsigned], io: KaitaiStream, root: KaitaiStruct, parent: IntegersMinMax): IntegersMinMax_Unsigned


proc read*(_: typedesc[IntegersMinMax], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IntegersMinMax =
  template this: untyped = result
  this = new(IntegersMinMax)
  let root = if root == nil: cast[IntegersMinMax](this) else: cast[IntegersMinMax](root)
  this.io = io
  this.root = root
  this.parent = parent

  let unsignedMinExpr = IntegersMinMax_Unsigned.read(this.io, this.root, this)
  this.unsignedMin = unsignedMinExpr
  let unsignedMaxExpr = IntegersMinMax_Unsigned.read(this.io, this.root, this)
  this.unsignedMax = unsignedMaxExpr
  let signedMinExpr = IntegersMinMax_Signed.read(this.io, this.root, this)
  this.signedMin = signedMinExpr
  let signedMaxExpr = IntegersMinMax_Signed.read(this.io, this.root, this)
  this.signedMax = signedMaxExpr

proc fromFile*(_: typedesc[IntegersMinMax], filename: string): IntegersMinMax =
  IntegersMinMax.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IntegersMinMax_Signed], io: KaitaiStream, root: KaitaiStruct, parent: IntegersMinMax): IntegersMinMax_Signed =
  template this: untyped = result
  this = new(IntegersMinMax_Signed)
  let root = if root == nil: cast[IntegersMinMax](this) else: cast[IntegersMinMax](root)
  this.io = io
  this.root = root
  this.parent = parent

  let s1Expr = this.io.readS1()
  this.s1 = s1Expr
  let s2leExpr = this.io.readS2le()
  this.s2le = s2leExpr
  let s4leExpr = this.io.readS4le()
  this.s4le = s4leExpr
  let s8leExpr = this.io.readS8le()
  this.s8le = s8leExpr
  let s2beExpr = this.io.readS2be()
  this.s2be = s2beExpr
  let s4beExpr = this.io.readS4be()
  this.s4be = s4beExpr
  let s8beExpr = this.io.readS8be()
  this.s8be = s8beExpr

proc fromFile*(_: typedesc[IntegersMinMax_Signed], filename: string): IntegersMinMax_Signed =
  IntegersMinMax_Signed.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IntegersMinMax_Unsigned], io: KaitaiStream, root: KaitaiStruct, parent: IntegersMinMax): IntegersMinMax_Unsigned =
  template this: untyped = result
  this = new(IntegersMinMax_Unsigned)
  let root = if root == nil: cast[IntegersMinMax](this) else: cast[IntegersMinMax](root)
  this.io = io
  this.root = root
  this.parent = parent

  let u1Expr = this.io.readU1()
  this.u1 = u1Expr
  let u2leExpr = this.io.readU2le()
  this.u2le = u2leExpr
  let u4leExpr = this.io.readU4le()
  this.u4le = u4leExpr
  let u8leExpr = this.io.readU8le()
  this.u8le = u8leExpr
  let u2beExpr = this.io.readU2be()
  this.u2be = u2beExpr
  let u4beExpr = this.io.readU4be()
  this.u4be = u4beExpr
  let u8beExpr = this.io.readU8be()
  this.u8be = u8beExpr

proc fromFile*(_: typedesc[IntegersMinMax_Unsigned], filename: string): IntegersMinMax_Unsigned =
  IntegersMinMax_Unsigned.read(newKaitaiFileStream(filename), nil, nil)

