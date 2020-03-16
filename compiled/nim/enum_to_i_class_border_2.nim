import ../../kaitai_struct_nim_runtime/kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  EnumToIClassBorder2* = ref EnumToIClassBorder2Obj
  EnumToIClassBorder2Obj* = object
    io: KaitaiStream
    root*: EnumToIClassBorder2
    parent*: ref RootObj
    isDogInst: proc(): bool

# EnumToIClassBorder2
template `.`*(a: EnumToIClassBorder2, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[EnumToIClassBorder2], io: KaitaiStream, root: EnumToIClassBorder2, parent: ref RootObj): owned EnumToIClassBorder2 =
  result = new(EnumToIClassBorder2)
  let root = if root == nil: cast[EnumToIClassBorder2](result) else: root
  result.io = io
  result.root = root
  result.parent = parent


  var isDogVal: Option[bool]
  let isDog = proc(): bool =
    if isNone(isDogVal):
      isDogVal = some(bool(ord(parent.someDog) == 4))
    get(isDogVal)
  result.isDogInst = isDog

proc fromFile*(_: typedesc[EnumToIClassBorder2], filename: string): owned EnumToIClassBorder2 =
  EnumToIClassBorder2.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var EnumToIClassBorder2Obj) =
  close(x.io)

