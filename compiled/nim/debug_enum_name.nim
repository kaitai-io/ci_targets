import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(DebugEnumName_test_enum1)
defineEnum(DebugEnumName_test_enum2)
defineEnum(DebugEnumName_TestSubtype_inner_enum1)
defineEnum(DebugEnumName_TestSubtype_inner_enum2)
const
  enum_value_80* = DebugEnumName_test_enum1(80)

const
  enum_value_65* = DebugEnumName_test_enum2(65)

const
  enum_value_67* = DebugEnumName_TestSubtype_inner_enum1(67)

const
  enum_value_11* = DebugEnumName_TestSubtype_inner_enum2(11)

type
  DebugEnumName* = ref object of KaitaiStruct
    one*: DebugEnumName_TestEnum1
    arrayOfInts*: seq[DebugEnumName_TestEnum2]
    testType*: DebugEnumName_TestSubtype
    parent*: KaitaiStruct
  DebugEnumName_TestSubtype* = ref object of KaitaiStruct
    field1*: DebugEnumName_TestSubtype_InnerEnum1
    field2*: uint8
    parent*: DebugEnumName
    instanceFieldInst*: Option[DebugEnumName_TestSubtype_InnerEnum2]

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

  this.one = DebugEnumName_TestEnum1(this.io.readU1())
  for i in 0 ..< 1:
    this.arrayOfInts.add(DebugEnumName_TestEnum2(this.io.readU1()))
  this.testType = DebugEnumName_TestSubtype.read(this.io, this.root, this)

proc fromFile*(_: typedesc[DebugEnumName], filename: string): DebugEnumName =
  DebugEnumName.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DebugEnumName_TestSubtype], io: KaitaiStream, root: KaitaiStruct, parent: DebugEnumName): DebugEnumName_TestSubtype =
  template this: untyped = result
  this = new(DebugEnumName_TestSubtype)
  let root = if root == nil: cast[DebugEnumName](this) else: cast[DebugEnumName](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.field1 = DebugEnumName_TestSubtype_InnerEnum1(this.io.readU1())
  this.field2 = this.io.readU1()

proc instanceField(this: DebugEnumName_TestSubtype): DebugEnumName_TestSubtype_InnerEnum2 = 
  if isSome(this.instanceFieldInst):
    return get(this.instanceFieldInst)
  this.instanceFieldInst = DebugEnumName_TestSubtype_InnerEnum2(DebugEnumName_TestSubtype_InnerEnum2((this.field2 and 15)))
  if isSome(this.instanceFieldInst):
    return get(this.instanceFieldInst)

proc fromFile*(_: typedesc[DebugEnumName_TestSubtype], filename: string): DebugEnumName_TestSubtype =
  DebugEnumName_TestSubtype.read(newKaitaiFileStream(filename), nil, nil)

