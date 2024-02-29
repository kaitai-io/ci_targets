import kaitai_struct_nim_runtime
import options

type
  EnumIf* = ref object of KaitaiStruct
    `op1`*: EnumIf_Operation
    `op2`*: EnumIf_Operation
    `op3`*: EnumIf_Operation
    `parent`*: KaitaiStruct
  EnumIf_Opcodes* = enum
    a_string = 83
    a_tuple = 84
  EnumIf_ArgStr* = ref object of KaitaiStruct
    `len`*: uint8
    `str`*: string
    `parent`*: EnumIf_Operation
  EnumIf_ArgTuple* = ref object of KaitaiStruct
    `num1`*: uint8
    `num2`*: uint8
    `parent`*: EnumIf_Operation
  EnumIf_Operation* = ref object of KaitaiStruct
    `opcode`*: EnumIf_Opcodes
    `argTuple`*: EnumIf_ArgTuple
    `argStr`*: EnumIf_ArgStr
    `parent`*: EnumIf

proc read*(_: typedesc[EnumIf], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumIf
proc read*(_: typedesc[EnumIf_ArgStr], io: KaitaiStream, root: KaitaiStruct, parent: EnumIf_Operation): EnumIf_ArgStr
proc read*(_: typedesc[EnumIf_ArgTuple], io: KaitaiStream, root: KaitaiStruct, parent: EnumIf_Operation): EnumIf_ArgTuple
proc read*(_: typedesc[EnumIf_Operation], io: KaitaiStream, root: KaitaiStruct, parent: EnumIf): EnumIf_Operation


proc read*(_: typedesc[EnumIf], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumIf =
  template this: untyped = result
  this = new(EnumIf)
  let root = if root == nil: cast[EnumIf](this) else: cast[EnumIf](root)
  this.io = io
  this.root = root
  this.parent = parent

  let op1Expr = EnumIf_Operation.read(this.io, this.root, this)
  this.op1 = op1Expr
  let op2Expr = EnumIf_Operation.read(this.io, this.root, this)
  this.op2 = op2Expr
  let op3Expr = EnumIf_Operation.read(this.io, this.root, this)
  this.op3 = op3Expr

proc fromFile*(_: typedesc[EnumIf], filename: string): EnumIf =
  EnumIf.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EnumIf_ArgStr], io: KaitaiStream, root: KaitaiStruct, parent: EnumIf_Operation): EnumIf_ArgStr =
  template this: untyped = result
  this = new(EnumIf_ArgStr)
  let root = if root == nil: cast[EnumIf](this) else: cast[EnumIf](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenExpr = this.io.readU1()
  this.len = lenExpr
  let strExpr = encode(this.io.readBytes(int(this.len)), "UTF-8")
  this.str = strExpr

proc fromFile*(_: typedesc[EnumIf_ArgStr], filename: string): EnumIf_ArgStr =
  EnumIf_ArgStr.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EnumIf_ArgTuple], io: KaitaiStream, root: KaitaiStruct, parent: EnumIf_Operation): EnumIf_ArgTuple =
  template this: untyped = result
  this = new(EnumIf_ArgTuple)
  let root = if root == nil: cast[EnumIf](this) else: cast[EnumIf](root)
  this.io = io
  this.root = root
  this.parent = parent

  let num1Expr = this.io.readU1()
  this.num1 = num1Expr
  let num2Expr = this.io.readU1()
  this.num2 = num2Expr

proc fromFile*(_: typedesc[EnumIf_ArgTuple], filename: string): EnumIf_ArgTuple =
  EnumIf_ArgTuple.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EnumIf_Operation], io: KaitaiStream, root: KaitaiStruct, parent: EnumIf): EnumIf_Operation =
  template this: untyped = result
  this = new(EnumIf_Operation)
  let root = if root == nil: cast[EnumIf](this) else: cast[EnumIf](root)
  this.io = io
  this.root = root
  this.parent = parent

  let opcodeExpr = EnumIf_Opcodes(this.io.readU1())
  this.opcode = opcodeExpr
  if this.opcode == enum_if.a_tuple:
    let argTupleExpr = EnumIf_ArgTuple.read(this.io, this.root, this)
    this.argTuple = argTupleExpr
  if this.opcode == enum_if.a_string:
    let argStrExpr = EnumIf_ArgStr.read(this.io, this.root, this)
    this.argStr = argStrExpr

proc fromFile*(_: typedesc[EnumIf_Operation], filename: string): EnumIf_Operation =
  EnumIf_Operation.read(newKaitaiFileStream(filename), nil, nil)

