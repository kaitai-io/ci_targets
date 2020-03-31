import kaitai_struct_nim_runtime
import options

type
  EnumNegative* = ref object of KaitaiStruct
    f1*: EnumNegative_Constants
    f2*: EnumNegative_Constants
    parent*: KaitaiStruct
  EnumNegative_constants* = enum
    negative_one = -1
    positive_one = 1

proc read*(_: typedesc[EnumNegative], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumNegative =
  template this: untyped = result
  this = new(EnumNegative)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.f1 = EnumNegative_Constants(this.io.readS1())

  ##[
  ]##
  this.f2 = EnumNegative_Constants(this.io.readS1())

proc fromFile*(_: typedesc[EnumNegative], filename: string): EnumNegative =
  EnumNegative.read(newKaitaiFileStream(filename), nil, nil)

