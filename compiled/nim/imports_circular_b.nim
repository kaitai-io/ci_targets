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
  result.initial = result.io.readU1()
  if initial == 65:
    result.backRef = ImportsCircularA.read(result.io)

proc fromFile*(_: typedesc[ImportsCircularB], filename: string): ImportsCircularB =
  ImportsCircularB.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsCircularBObj) =
  close(x.io)

