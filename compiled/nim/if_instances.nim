import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  IfInstances* = ref IfInstancesObj
  IfInstancesObj* = object
    io: KaitaiStream
    root*: IfInstances
    parent*: ref RootObj
    neverHappensInst: proc(): uint8

# IfInstances
template `.`*(a: IfInstances, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[IfInstances], io: KaitaiStream, root: IfInstances, parent: ref RootObj): owned IfInstances =
  result = new(IfInstances)
  let root = if root == nil: cast[IfInstances](result) else: root
  result.io = io
  result.root = root
  result.parent = parent


proc fromFile*(_: typedesc[IfInstances], filename: string): owned IfInstances =
  IfInstances.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var IfInstancesObj) =
  close(x.io)

