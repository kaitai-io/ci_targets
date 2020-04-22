import kaitai_struct_nim_runtime
import options

type
  EnumLongRangeS* = ref object of KaitaiStruct
    f1*: EnumLongRangeS_Constants
    f2*: EnumLongRangeS_Constants
    f3*: EnumLongRangeS_Constants
    f4*: EnumLongRangeS_Constants
    f5*: EnumLongRangeS_Constants
    f6*: EnumLongRangeS_Constants
    f7*: EnumLongRangeS_Constants
    parent*: KaitaiStruct
  EnumLongRangeS_Constants* = enum
    long_min = low(int64)
    int_below_min = -2147483649
    int_min = -2147483648
    zero = 0
    int_max = 2147483647
    int_over_max = 2147483648
    long_max = 9223372036854775807

proc read*(_: typedesc[EnumLongRangeS], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumLongRangeS


proc read*(_: typedesc[EnumLongRangeS], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumLongRangeS =
  template this: untyped = result
  this = new(EnumLongRangeS)
  let root = if root == nil: cast[EnumLongRangeS](this) else: cast[EnumLongRangeS](root)
  this.io = io
  this.root = root
  this.parent = parent

  let f1Expr = EnumLongRangeS_Constants(this.io.readS8be())
  this.f1 = f1Expr
  let f2Expr = EnumLongRangeS_Constants(this.io.readS8be())
  this.f2 = f2Expr
  let f3Expr = EnumLongRangeS_Constants(this.io.readS8be())
  this.f3 = f3Expr
  let f4Expr = EnumLongRangeS_Constants(this.io.readS8be())
  this.f4 = f4Expr
  let f5Expr = EnumLongRangeS_Constants(this.io.readS8be())
  this.f5 = f5Expr
  let f6Expr = EnumLongRangeS_Constants(this.io.readS8be())
  this.f6 = f6Expr
  let f7Expr = EnumLongRangeS_Constants(this.io.readS8be())
  this.f7 = f7Expr

proc fromFile*(_: typedesc[EnumLongRangeS], filename: string): EnumLongRangeS =
  EnumLongRangeS.read(newKaitaiFileStream(filename), nil, nil)

