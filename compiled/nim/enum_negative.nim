import kaitai_struct_nim_runtime
import options

type
  EnumNegative* = ref EnumNegativeObj
  EnumNegativeObj* = object
    f1*: EnumNegative_Constants
    f2*: EnumNegative_Constants
    io*: KaitaiStream
    root*: EnumNegative
    parent*: ref RootObj
  EnumNegative_constants* = enum
    negative_one = -1
    positive_one = 1

## EnumNegative
proc read*(_: typedesc[EnumNegative], io: KaitaiStream, root: EnumNegative, parent: ref RootObj): EnumNegative =
  let this = new(EnumNegative)
  let root = if root == nil: cast[EnumNegative](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.f1 = EnumNegative_Constants(this.io.readS1())
  this.f2 = EnumNegative_Constants(this.io.readS1())
  result = this

proc fromFile*(_: typedesc[EnumNegative], filename: string): EnumNegative =
  EnumNegative.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumNegativeObj) =
  close(x.io)

