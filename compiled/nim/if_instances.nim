import ../runtime/nim/kaitai_struct_nim_runtime
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


  var neverHappensVal: Option[uint8]
  let neverHappens = proc(): uint8 =
    if isNone(neverHappensVal):
      neverHappensVal = readU1(io)
    get(neverHappensVal)
  result.neverHappensInst = neverHappens

proc fromFile*(_: typedesc[IfInstances], filename: string): owned IfInstances =
  IfInstances.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var IfInstancesObj) =
  close(x.io)

