import kaitai_struct_nim_runtime
import options

type
  ParamsPassBool* = ref object of KaitaiStruct
    `sFalse`*: bool
    `sTrue`*: bool
    `seqB1`*: ParamsPassBool_ParamTypeB1
    `seqBool`*: ParamsPassBool_ParamTypeBool
    `literalB1`*: ParamsPassBool_ParamTypeB1
    `literalBool`*: ParamsPassBool_ParamTypeBool
    `instB1`*: ParamsPassBool_ParamTypeB1
    `instBool`*: ParamsPassBool_ParamTypeBool
    `parent`*: KaitaiStruct
    `vFalseInst`*: bool
    `vTrueInst`*: bool
  ParamsPassBool_ParamTypeB1* = ref object of KaitaiStruct
    `foo`*: seq[byte]
    `arg`*: bool
    `parent`*: ParamsPassBool
  ParamsPassBool_ParamTypeBool* = ref object of KaitaiStruct
    `foo`*: seq[byte]
    `arg`*: bool
    `parent`*: ParamsPassBool

proc read*(_: typedesc[ParamsPassBool], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassBool
proc read*(_: typedesc[ParamsPassBool_ParamTypeB1], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassBool, arg: any): ParamsPassBool_ParamTypeB1
proc read*(_: typedesc[ParamsPassBool_ParamTypeBool], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassBool, arg: any): ParamsPassBool_ParamTypeBool

proc vFalse*(this: ParamsPassBool): bool
proc vTrue*(this: ParamsPassBool): bool

proc read*(_: typedesc[ParamsPassBool], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassBool =
  template this: untyped = result
  this = new(ParamsPassBool)
  let root = if root == nil: cast[ParamsPassBool](this) else: cast[ParamsPassBool](root)
  this.io = io
  this.root = root
  this.parent = parent

  let sFalseExpr = this.io.readBitsIntBe(1) != 0
  this.sFalse = sFalseExpr
  let sTrueExpr = this.io.readBitsIntBe(1) != 0
  this.sTrue = sTrueExpr
  alignToByte(this.io)
  let seqB1Expr = ParamsPassBool_ParamTypeB1.read(this.io, this.root, this, this.sTrue)
  this.seqB1 = seqB1Expr
  let seqBoolExpr = ParamsPassBool_ParamTypeBool.read(this.io, this.root, this, this.sFalse)
  this.seqBool = seqBoolExpr
  let literalB1Expr = ParamsPassBool_ParamTypeB1.read(this.io, this.root, this, false)
  this.literalB1 = literalB1Expr
  let literalBoolExpr = ParamsPassBool_ParamTypeBool.read(this.io, this.root, this, true)
  this.literalBool = literalBoolExpr
  let instB1Expr = ParamsPassBool_ParamTypeB1.read(this.io, this.root, this, this.vTrue)
  this.instB1 = instB1Expr
  let instBoolExpr = ParamsPassBool_ParamTypeBool.read(this.io, this.root, this, this.vFalse)
  this.instBool = instBoolExpr

proc vFalse(this: ParamsPassBool): bool = 
  if this.vFalseInst != nil:
    return this.vFalseInst
  let vFalseInstExpr = bool(false)
  this.vFalseInst = vFalseInstExpr
  if this.vFalseInst != nil:
    return this.vFalseInst

proc vTrue(this: ParamsPassBool): bool = 
  if this.vTrueInst != nil:
    return this.vTrueInst
  let vTrueInstExpr = bool(true)
  this.vTrueInst = vTrueInstExpr
  if this.vTrueInst != nil:
    return this.vTrueInst

proc fromFile*(_: typedesc[ParamsPassBool], filename: string): ParamsPassBool =
  ParamsPassBool.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassBool_ParamTypeB1], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassBool, arg: any): ParamsPassBool_ParamTypeB1 =
  template this: untyped = result
  this = new(ParamsPassBool_ParamTypeB1)
  let root = if root == nil: cast[ParamsPassBool](this) else: cast[ParamsPassBool](root)
  this.io = io
  this.root = root
  this.parent = parent
  let argExpr = bool(arg)
  this.arg = argExpr

  let fooExpr = this.io.readBytes(int((if this.arg: 1 else: 2)))
  this.foo = fooExpr

proc fromFile*(_: typedesc[ParamsPassBool_ParamTypeB1], filename: string): ParamsPassBool_ParamTypeB1 =
  ParamsPassBool_ParamTypeB1.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassBool_ParamTypeBool], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassBool, arg: any): ParamsPassBool_ParamTypeBool =
  template this: untyped = result
  this = new(ParamsPassBool_ParamTypeBool)
  let root = if root == nil: cast[ParamsPassBool](this) else: cast[ParamsPassBool](root)
  this.io = io
  this.root = root
  this.parent = parent
  let argExpr = bool(arg)
  this.arg = argExpr

  let fooExpr = this.io.readBytes(int((if this.arg: 1 else: 2)))
  this.foo = fooExpr

proc fromFile*(_: typedesc[ParamsPassBool_ParamTypeBool], filename: string): ParamsPassBool_ParamTypeBool =
  ParamsPassBool_ParamTypeBool.read(newKaitaiFileStream(filename), nil, nil)

