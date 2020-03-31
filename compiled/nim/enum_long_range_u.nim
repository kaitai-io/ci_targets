import kaitai_struct_nim_runtime
import options

type
  EnumLongRangeU* = ref object of KaitaiStruct
    f1*: EnumLongRangeU_Constants
    f2*: EnumLongRangeU_Constants
    f3*: EnumLongRangeU_Constants
    f4*: EnumLongRangeU_Constants
    parent*: KaitaiStruct
  EnumLongRangeU_constants* = enum
    zero = 0
    int_max = 4294967295
    int_over_max = 4294967296
    long_max = 9223372036854775807

proc read*(_: typedesc[EnumLongRangeU], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumLongRangeU =
  template this: untyped = result
  this = new(EnumLongRangeU)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.f1 = EnumLongRangeU_Constants(this.io.readU8be())

  ##[
  ]##
  this.f2 = EnumLongRangeU_Constants(this.io.readU8be())

  ##[
  ]##
  this.f3 = EnumLongRangeU_Constants(this.io.readU8be())

  ##[
  ]##
  this.f4 = EnumLongRangeU_Constants(this.io.readU8be())

proc fromFile*(_: typedesc[EnumLongRangeU], filename: string): EnumLongRangeU =
  EnumLongRangeU.read(newKaitaiFileStream(filename), nil, nil)

