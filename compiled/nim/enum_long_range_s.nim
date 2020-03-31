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
  EnumLongRangeS_constants* = enum
    long_min = -9223372036854775808
    int_below_min = -2147483649
    int_min = -2147483648
    zero = 0
    int_max = 2147483647
    int_over_max = 2147483648
    long_max = 9223372036854775807

proc read*(_: typedesc[EnumLongRangeS], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumLongRangeS =
  template this: untyped = result
  this = new(EnumLongRangeS)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.f1 = EnumLongRangeS_Constants(this.io.readS8be())

  ##[
  ]##
  this.f2 = EnumLongRangeS_Constants(this.io.readS8be())

  ##[
  ]##
  this.f3 = EnumLongRangeS_Constants(this.io.readS8be())

  ##[
  ]##
  this.f4 = EnumLongRangeS_Constants(this.io.readS8be())

  ##[
  ]##
  this.f5 = EnumLongRangeS_Constants(this.io.readS8be())

  ##[
  ]##
  this.f6 = EnumLongRangeS_Constants(this.io.readS8be())

  ##[
  ]##
  this.f7 = EnumLongRangeS_Constants(this.io.readS8be())

proc fromFile*(_: typedesc[EnumLongRangeS], filename: string): EnumLongRangeS =
  EnumLongRangeS.read(newKaitaiFileStream(filename), nil, nil)

