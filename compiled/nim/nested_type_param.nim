import kaitai_struct_nim_runtime
import options

type
  NestedTypeParam* = ref object of KaitaiStruct
    mainSeq*: NestedTypeParam_Nested_MyType
    parent*: KaitaiStruct
  NestedTypeParam_Nested* = ref object of KaitaiStruct
    parent*: KaitaiStruct
  NestedTypeParam_Nested_MyType* = ref object of KaitaiStruct
    body*: string
    myLen*: uint32
    parent*: NestedTypeParam

proc read*(_: typedesc[NestedTypeParam], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypeParam
proc read*(_: typedesc[NestedTypeParam_Nested], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypeParam_Nested
proc read*(_: typedesc[NestedTypeParam_Nested_MyType], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypeParam, myLen: any): NestedTypeParam_Nested_MyType


proc read*(_: typedesc[NestedTypeParam], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypeParam =
  template this: untyped = result
  this = new(NestedTypeParam)
  let root = if root == nil: cast[NestedTypeParam](this) else: cast[NestedTypeParam](root)
  this.io = io
  this.root = root
  this.parent = parent

  let mainSeqExpr = NestedTypeParam_Nested_MyType.read(this.io, this.root, this, 5)
  this.mainSeq = mainSeqExpr

proc fromFile*(_: typedesc[NestedTypeParam], filename: string): NestedTypeParam =
  NestedTypeParam.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypeParam_Nested], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NestedTypeParam_Nested =
  template this: untyped = result
  this = new(NestedTypeParam_Nested)
  let root = if root == nil: cast[NestedTypeParam](this) else: cast[NestedTypeParam](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[NestedTypeParam_Nested], filename: string): NestedTypeParam_Nested =
  NestedTypeParam_Nested.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NestedTypeParam_Nested_MyType], io: KaitaiStream, root: KaitaiStruct, parent: NestedTypeParam, myLen: any): NestedTypeParam_Nested_MyType =
  template this: untyped = result
  this = new(NestedTypeParam_Nested_MyType)
  let root = if root == nil: cast[NestedTypeParam](this) else: cast[NestedTypeParam](root)
  this.io = io
  this.root = root
  this.parent = parent
  let myLenExpr = uint32(myLen)
  this.myLen = myLenExpr

  let bodyExpr = encode(this.io.readBytes(int(this.myLen)), "ASCII")
  this.body = bodyExpr

proc fromFile*(_: typedesc[NestedTypeParam_Nested_MyType], filename: string): NestedTypeParam_Nested_MyType =
  NestedTypeParam_Nested_MyType.read(newKaitaiFileStream(filename), nil, nil)

