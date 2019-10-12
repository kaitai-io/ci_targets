import ../../runtime/nim/kaitai



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

  result.initial = readU1(io)
  result.backRef = ImportsCircularA.read(io)


proc fromFile*(_: typedesc[ImportsCircularB], filename: string): owned ImportsCircularB =
  ImportsCircularB.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ImportsCircularBObj) =
  close(x.io)

