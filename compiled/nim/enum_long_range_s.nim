import kaitai_struct_nim_runtime
import options

type
  EnumLongRangeS* = ref EnumLongRangeSObj
  EnumLongRangeSObj* = object
    f1*: EnumLongRangeS_Constants
    f2*: EnumLongRangeS_Constants
    f3*: EnumLongRangeS_Constants
    f4*: EnumLongRangeS_Constants
    f5*: EnumLongRangeS_Constants
    f6*: EnumLongRangeS_Constants
    f7*: EnumLongRangeS_Constants
    io*: KaitaiStream
    root*: EnumLongRangeS
    parent*: ref RootObj
  EnumLongRangeS_constants* = enum
    long_min = -9223372036854775808
    int_below_min = -2147483649
    int_min = -2147483648
    zero = 0
    int_max = 2147483647
    int_over_max = 2147483648
    long_max = 9223372036854775807

### EnumLongRangeS ###
proc read*(_: typedesc[EnumLongRangeS], io: KaitaiStream, root: EnumLongRangeS, parent: ref RootObj): EnumLongRangeS =
  let this = new(EnumLongRangeS)
  let root = if root == nil: cast[EnumLongRangeS](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let f1 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f1 = f1
  let f2 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f2 = f2
  let f3 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f3 = f3
  let f4 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f4 = f4
  let f5 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f5 = f5
  let f6 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f6 = f6
  let f7 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f7 = f7
  result = this

proc fromFile*(_: typedesc[EnumLongRangeS], filename: string): EnumLongRangeS =
  EnumLongRangeS.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumLongRangeSObj) =
  close(x.io)

