import kaitai_struct_nim_runtime
import options

type
  CombineEnum* = ref object of KaitaiStruct
    `enumU4`*: CombineEnum_Animal
    `enumU2`*: CombineEnum_Animal
    `parent`*: KaitaiStruct
    `enumU4U2Inst`: CombineEnum_Animal
    `enumU4U2InstFlag`: bool
  CombineEnum_Animal* = enum
    pig = 7
    horse = 12

proc read*(_: typedesc[CombineEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineEnum

proc enumU4U2*(this: CombineEnum): CombineEnum_Animal

proc read*(_: typedesc[CombineEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): CombineEnum =
  template this: untyped = result
  this = new(CombineEnum)
  let root = if root == nil: cast[CombineEnum](this) else: cast[CombineEnum](root)
  this.io = io
  this.root = root
  this.parent = parent

  let enumU4Expr = CombineEnum_Animal(this.io.readU4le())
  this.enumU4 = enumU4Expr
  let enumU2Expr = CombineEnum_Animal(this.io.readU2le())
  this.enumU2 = enumU2Expr

proc enumU4U2(this: CombineEnum): CombineEnum_Animal = 
  if this.enumU4U2InstFlag:
    return this.enumU4U2Inst
  let enumU4U2InstExpr = CombineEnum_Animal((if false: this.enumU4 else: this.enumU2))
  this.enumU4U2Inst = enumU4U2InstExpr
  this.enumU4U2InstFlag = true
  return this.enumU4U2Inst

proc fromFile*(_: typedesc[CombineEnum], filename: string): CombineEnum =
  CombineEnum.read(newKaitaiFileStream(filename), nil, nil)

