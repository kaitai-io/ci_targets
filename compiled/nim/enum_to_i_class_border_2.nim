import kaitai_struct_nim_runtime
import options
import enum_to_i_class_border_1

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  EnumToIClassBorder2* = ref object of KaitaiStruct
    parent*: EnumToIClassBorder1
    parent*: KaitaiStruct
    isDogInst*: Option[bool]

proc read*(_: typedesc[EnumToIClassBorder2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, parent: any): EnumToIClassBorder2

proc isDog*(this: EnumToIClassBorder2): bool

proc read*(_: typedesc[EnumToIClassBorder2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct, parent: any): EnumToIClassBorder2 =
  template this: untyped = result
  this = new(EnumToIClassBorder2)
  let root = if root == nil: cast[EnumToIClassBorder2](this) else: cast[EnumToIClassBorder2](root)
  this.io = io
  this.root = root
  this.parent = parent
  let parentExpr = EnumToIClassBorder1(parent)
  this.parent = parentExpr


proc isDog(this: EnumToIClassBorder2): bool = 
  if isSome(this.isDogInst):
    return get(this.isDogInst)
  let isDogInstExpr = bool(ord(this.parent.someDog) == 4)
  this.isDogInst = isDogInstExpr
  if isSome(this.isDogInst):
    return get(this.isDogInst)

proc fromFile*(_: typedesc[EnumToIClassBorder2], filename: string): EnumToIClassBorder2 =
  EnumToIClassBorder2.read(newKaitaiFileStream(filename), nil, nil)

