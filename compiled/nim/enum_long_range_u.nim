import kaitai_struct_nim_runtime
import options

type
  EnumLongRangeU* = ref EnumLongRangeUObj
  EnumLongRangeUObj* = object
    f1*: EnumLongRangeU_Constants
    f2*: EnumLongRangeU_Constants
    f3*: EnumLongRangeU_Constants
    f4*: EnumLongRangeU_Constants
    io*: KaitaiStream
    root*: EnumLongRangeU
    parent*: ref RootObj
  EnumLongRangeU_constants* = enum
    zero = 0
    int_max = 4294967295
    int_over_max = 4294967296
    long_max = 9223372036854775807

### EnumLongRangeU ###
proc read*(_: typedesc[EnumLongRangeU], io: KaitaiStream, root: EnumLongRangeU, parent: ref RootObj): EnumLongRangeU =
  let this = new(EnumLongRangeU)
  let root = if root == nil: cast[EnumLongRangeU](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let f1 = EnumLongRangeU_Constants(this.io.readU8be())
  this.f1 = f1
  let f2 = EnumLongRangeU_Constants(this.io.readU8be())
  this.f2 = f2
  let f3 = EnumLongRangeU_Constants(this.io.readU8be())
  this.f3 = f3
  let f4 = EnumLongRangeU_Constants(this.io.readU8be())
  this.f4 = f4
  result = this

proc fromFile*(_: typedesc[EnumLongRangeU], filename: string): EnumLongRangeU =
  EnumLongRangeU.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumLongRangeUObj) =
  close(x.io)

