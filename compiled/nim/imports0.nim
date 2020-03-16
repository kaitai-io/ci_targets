import ../../../runtime/nim/kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  Imports0* = ref Imports0Obj
  Imports0Obj* = object
    io: KaitaiStream
    root*: Imports0
    parent*: ref RootObj
    two*: uint8
    hw*: HelloWorld
    hwOneInst: proc(): uint8

# Imports0
template `.`*(a: Imports0, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[Imports0], io: KaitaiStream, root: Imports0, parent: ref RootObj): owned Imports0 =
  result = new(Imports0)
  let root = if root == nil: cast[Imports0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let two = readU1(io)
  result.two = two
  let hw = HelloWorld.read(io)
  result.hw = hw

  var hwOneVal: Option[uint8]
  let hwOne = proc(): uint8 =
    if isNone(hwOneVal):
      hwOneVal = some(uint8(hw.one))
    get(hwOneVal)
  result.hwOneInst = hwOne

proc fromFile*(_: typedesc[Imports0], filename: string): owned Imports0 =
  Imports0.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var Imports0Obj) =
  close(x.io)

