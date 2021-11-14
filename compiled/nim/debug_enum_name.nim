import kaitai_struct_nim_runtime
import options

type
  DebugEnumName* = ref object of KaitaiStruct
    `one`*: DebugEnumName_TestEnum1
    `arrayOfInts`*: seq[DebugEnumName_TestEnum2]
    `testType`*: DebugEnumName_TestSubtype
    `parent`*: KaitaiStruct
  DebugEnumName_TestEnum1* = enum
    enum_value_80 = 80
  DebugEnumName_TestEnum2* = enum
    enum_value_65 = 65
  DebugEnumName_TestSubtype* = ref object of KaitaiStruct
    `field1`*: DebugEnumName_TestSubtype_InnerEnum1
    `field2`*: uint8
    `parent`*: DebugEnumName
    `instanceFieldInst`: DebugEnumName_TestSubtype_InnerEnum2
    `instanceFieldInstFlag`: bool
  DebugEnumName_TestSubtype_InnerEnum1* = enum
    enum_value_67 = 67
  DebugEnumName_TestSubtype_InnerEnum2* = enum
    enum_value_11 = 11

proc read*(_: typedesc[DebugEnumName], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DebugEnumName
proc read*(_: typedesc[DebugEnumName_TestSubtype], io: KaitaiStream, root: KaitaiStruct, parent: DebugEnumName): DebugEnumName_TestSubtype

proc instanceField*(this: DebugEnumName_TestSubtype): DebugEnumName_TestSubtype_InnerEnum2

proc read*(_: typedesc[DebugEnumName], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DebugEnumName =
  template this: untyped = result
  this = new(DebugEnumName)
  let root = if root == nil: cast[DebugEnumName](this) else: cast[DebugEnumName](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = DebugEnumName_TestEnum1(this.io.readU1())
  this.one = oneExpr
  for i in 0 ..< int(1):
    let it = DebugEnumName_TestEnum2(this.io.readU1())
    this.arrayOfInts.add(it)
  let testTypeExpr = DebugEnumName_TestSubtype.read(this.io, this.root, this)
  this.testType = testTypeExpr

proc fromFile*(_: typedesc[DebugEnumName], filename: string): DebugEnumName =
  DebugEnumName.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DebugEnumName_TestSubtype], io: KaitaiStream, root: KaitaiStruct, parent: DebugEnumName): DebugEnumName_TestSubtype =
  template this: untyped = result
  this = new(DebugEnumName_TestSubtype)
  let root = if root == nil: cast[DebugEnumName](this) else: cast[DebugEnumName](root)
  this.io = io
  this.root = root
  this.parent = parent

  let field1Expr = DebugEnumName_TestSubtype_InnerEnum1(this.io.readU1())
  this.field1 = field1Expr
  let field2Expr = this.io.readU1()
  this.field2 = field2Expr

proc instanceField(this: DebugEnumName_TestSubtype): DebugEnumName_TestSubtype_InnerEnum2 = 
  if this.instanceFieldInstFlag:
    return this.instanceFieldInst
  let instanceFieldInstExpr = DebugEnumName_TestSubtype_InnerEnum2(DebugEnumName_TestSubtype_InnerEnum2((this.field2 and 15)))
  this.instanceFieldInst = instanceFieldInstExpr
  this.instanceFieldInstFlag = true
  return this.instanceFieldInst

proc fromFile*(_: typedesc[DebugEnumName_TestSubtype], filename: string): DebugEnumName_TestSubtype =
  DebugEnumName_TestSubtype.read(newKaitaiFileStream(filename), nil, nil)

