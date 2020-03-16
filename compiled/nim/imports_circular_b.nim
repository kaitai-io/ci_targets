import ../../kaitai_struct_nim_runtime/kaitai_struct_nim_runtime



type
  ImportsCircularB* = ref ImportsCircularBObj
  ImportsCircularBObj* = object
    io: KaitaiStream
    root*: ImportsCircularB
    parent*: ref RootObj
    initial*: uint8
    backRef*: ImportsCircularA

# ImportsCircularB
proc read*(_: typedesc[ImportsCircularB], io: KaitaiStream, root: ImportsCircularB, parent: ref RootObj): owned ImportsCircularB =
  result = new(ImportsCircularB)
  let root = if root == nil: cast[ImportsCircularB](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let initial = readU1(io)
  result.initial = initial
  let backRef = ImportsCircularA.read(io)
  result.backRef = backRef


proc fromFile*(_: typedesc[ImportsCircularB], filename: string): owned ImportsCircularB =
  ImportsCircularB.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ImportsCircularBObj) =
  close(x.io)

