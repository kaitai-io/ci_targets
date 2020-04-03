import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(EnumLongRangeS_constants)
const
  long_min* = EnumLongRangeS_constants(low(int64))
  int_below_min* = EnumLongRangeS_constants(-2147483649)
  int_min* = EnumLongRangeS_constants(-2147483648)
  zero* = EnumLongRangeS_constants(0)
  int_max* = EnumLongRangeS_constants(2147483647)
  int_over_max* = EnumLongRangeS_constants(2147483648)
  long_max* = EnumLongRangeS_constants(9223372036854775807)

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

proc read*(_: typedesc[EnumLongRangeS], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumLongRangeS


proc read*(_: typedesc[EnumLongRangeS], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumLongRangeS =
  template this: untyped = result
  this = new(EnumLongRangeS)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.f1 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f2 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f3 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f4 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f5 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f6 = EnumLongRangeS_Constants(this.io.readS8be())
  this.f7 = EnumLongRangeS_Constants(this.io.readS8be())

proc fromFile*(_: typedesc[EnumLongRangeS], filename: string): EnumLongRangeS =
  EnumLongRangeS.read(newKaitaiFileStream(filename), nil, nil)

