import kaitai_struct_nim_runtime
import options

type
  EnumToIClassBorder2* = ref EnumToIClassBorder2Obj
  EnumToIClassBorder2Obj* = object
    parent*: EnumToIClassBorder1
    io*: KaitaiStream
    root*: EnumToIClassBorder2
    parent*: ref RootObj
    isDogInst*: Option[bool]

## EnumToIClassBorder2
proc isDog*(this: EnumToIClassBorder2): bool
proc isDog(this: EnumToIClassBorder2): bool = 
  if isSome(this.isDogInst):
    return get(this.isDogInst)
  this.isDogInst = some(ord(this.parent.someDog) == 4)
  return get(this.isDogInst)

proc read*(_: typedesc[EnumToIClassBorder2], io: KaitaiStream, root: EnumToIClassBorder2, parent: ref RootObj): EnumToIClassBorder2 =
  let this = new(EnumToIClassBorder2)
  let root = if root == nil: cast[EnumToIClassBorder2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[EnumToIClassBorder2], filename: string): EnumToIClassBorder2 =
  EnumToIClassBorder2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumToIClassBorder2Obj) =
  close(x.io)

