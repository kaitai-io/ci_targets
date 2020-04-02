import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(EnumIntRangeU_constants)
const
  zero* = EnumIntRangeU_constants(0)
  int_max* = EnumIntRangeU_constants(4294967295)

type
  EnumIntRangeU* = ref object of KaitaiStruct
    f1*: EnumIntRangeU_Constants
    f2*: EnumIntRangeU_Constants
    parent*: KaitaiStruct

proc read*(_: typedesc[EnumIntRangeU], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumIntRangeU

proc read*(_: typedesc[EnumIntRangeU], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumIntRangeU =
  template this: untyped = result
  this = new(EnumIntRangeU)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.f1 = EnumIntRangeU_Constants(this.io.readU4be())
  this.f2 = EnumIntRangeU_Constants(this.io.readU4be())

proc fromFile*(_: typedesc[EnumIntRangeU], filename: string): EnumIntRangeU =
  EnumIntRangeU.read(newKaitaiFileStream(filename), nil, nil)

