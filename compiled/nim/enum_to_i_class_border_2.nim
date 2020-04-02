import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  EnumToIClassBorder2* = ref object of KaitaiStruct
    parent*: EnumToIClassBorder1
    parent*: KaitaiStruct
    isDogInst*: Option[bool]

proc read*(_: typedesc[EnumToIClassBorder2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumToIClassBorder2

proc isDog*(this: EnumToIClassBorder2): bool
proc read*(_: typedesc[EnumToIClassBorder2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumToIClassBorder2 =
  template this: untyped = result
  this = new(EnumToIClassBorder2)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc isDog(this: EnumToIClassBorder2): bool = 
  if isSome(this.isDogInst):
    return get(this.isDogInst)
  this.isDogInst = some(ord(this.parent.someDog) == 4)
  return get(this.isDogInst)

proc fromFile*(_: typedesc[EnumToIClassBorder2], filename: string): EnumToIClassBorder2 =
  EnumToIClassBorder2.read(newKaitaiFileStream(filename), nil, nil)

