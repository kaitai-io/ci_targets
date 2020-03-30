import kaitai_struct_nim_runtime
import options

type
  EnumIntRangeU* = ref EnumIntRangeUObj
  EnumIntRangeUObj* = object
    f1*: EnumIntRangeU_Constants
    f2*: EnumIntRangeU_Constants
    io*: KaitaiStream
    root*: EnumIntRangeU
    parent*: ref RootObj
  EnumIntRangeU_constants* = enum
    zero = 0
    int_max = 4294967295

## EnumIntRangeU
proc read*(_: typedesc[EnumIntRangeU], io: KaitaiStream, root: EnumIntRangeU, parent: ref RootObj): EnumIntRangeU =
  let this = new(EnumIntRangeU)
  let root = if root == nil: cast[EnumIntRangeU](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.f1 = EnumIntRangeU_Constants(this.io.readU4be())
  this.f2 = EnumIntRangeU_Constants(this.io.readU4be())
  result = this

proc fromFile*(_: typedesc[EnumIntRangeU], filename: string): EnumIntRangeU =
  EnumIntRangeU.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumIntRangeUObj) =
  close(x.io)

