import kaitai_struct_nim_runtime
import options

type
  EnumIntRangeS* = ref EnumIntRangeSObj
  EnumIntRangeSObj* = object
    f1*: EnumIntRangeS_Constants
    f2*: EnumIntRangeS_Constants
    f3*: EnumIntRangeS_Constants
    io*: KaitaiStream
    root*: EnumIntRangeS
    parent*: ref RootObj
  EnumIntRangeS_constants* = enum
    int_min = -2147483648
    zero = 0
    int_max = 2147483647

## EnumIntRangeS
proc read*(_: typedesc[EnumIntRangeS], io: KaitaiStream, root: EnumIntRangeS, parent: ref RootObj): EnumIntRangeS =
  let this = new(EnumIntRangeS)
  let root = if root == nil: cast[EnumIntRangeS](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.f1 = EnumIntRangeS_Constants(this.io.readS4be())
  this.f2 = EnumIntRangeS_Constants(this.io.readS4be())
  this.f3 = EnumIntRangeS_Constants(this.io.readS4be())
  result = this

proc fromFile*(_: typedesc[EnumIntRangeS], filename: string): EnumIntRangeS =
  EnumIntRangeS.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumIntRangeSObj) =
  close(x.io)

