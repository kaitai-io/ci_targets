import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  InstanceStd* = ref InstanceStdObj
  InstanceStdObj* = object
    io: KaitaiStream
    root*: InstanceStd
    parent*: ref RootObj
    headerInst: proc(): string

# InstanceStd
template `.`*(a: InstanceStd, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[InstanceStd], io: KaitaiStream, root: InstanceStd, parent: ref RootObj): owned InstanceStd =
  result = new(InstanceStd)
  let root = if root == nil: cast[InstanceStd](result) else: root
  result.io = io
  result.root = root
  result.parent = parent


proc fromFile*(_: typedesc[InstanceStd], filename: string): owned InstanceStd =
  InstanceStd.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var InstanceStdObj) =
  close(x.io)

