import kaitai_struct_nim_runtime
import options

type
  EnumIntRangeS* = ref object of KaitaiStruct
    f1*: EnumIntRangeS_Constants
    f2*: EnumIntRangeS_Constants
    f3*: EnumIntRangeS_Constants
    parent*: KaitaiStruct
  EnumIntRangeS_Constants* = enum
    int_min = -2147483648
    zero = 0
    int_max = 2147483647

proc read*(_: typedesc[EnumIntRangeS], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumIntRangeS


proc read*(_: typedesc[EnumIntRangeS], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumIntRangeS =
  template this: untyped = result
  this = new(EnumIntRangeS)
  let root = if root == nil: cast[EnumIntRangeS](this) else: cast[EnumIntRangeS](root)
  this.io = io
  this.root = root
  this.parent = parent

  let f1Expr = EnumIntRangeS_Constants(this.io.readS4be())
  this.f1 = f1Expr
  let f2Expr = EnumIntRangeS_Constants(this.io.readS4be())
  this.f2 = f2Expr
  let f3Expr = EnumIntRangeS_Constants(this.io.readS4be())
  this.f3 = f3Expr

proc fromFile*(_: typedesc[EnumIntRangeS], filename: string): EnumIntRangeS =
  EnumIntRangeS.read(newKaitaiFileStream(filename), nil, nil)

