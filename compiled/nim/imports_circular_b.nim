import kaitai_struct_nim_runtime

type
  ImportsCircularB* = ref ImportsCircularBObj
  ImportsCircularBObj* = object
    initial*: uint8
    backRef*: ImportsCircularA
    io*: KaitaiStream
    root*: ImportsCircularB
    parent*: ref RootObj

### ImportsCircularB ###
proc read*(_: typedesc[ImportsCircularB], io: KaitaiStream, root: ImportsCircularB, parent: ref RootObj): ImportsCircularB =
  result = new(ImportsCircularB)
  let root = if root == nil: cast[ImportsCircularB](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let initial = io.readU1()
  result.initial = initial
  if initial == 65:
    let backRef = ImportsCircularA.read(io)
    result.backRef = backRef

proc fromFile*(_: typedesc[ImportsCircularB], filename: string): ImportsCircularB =
  ImportsCircularB.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsCircularBObj) =
  close(x.io)

