import kaitai_struct_nim_runtime

type
  ImportsCircularA* = ref ImportsCircularAObj
  ImportsCircularAObj* = object
    code*: uint8
    two*: ImportsCircularB
    io*: KaitaiStream
    root*: ImportsCircularA
    parent*: ref RootObj

### ImportsCircularA ###
proc read*(_: typedesc[ImportsCircularA], io: KaitaiStream, root: ImportsCircularA, parent: ref RootObj): ImportsCircularA =
  result = new(ImportsCircularA)
  let root = if root == nil: cast[ImportsCircularA](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = result.io.readU1()
  result.two = ImportsCircularB.read(result.io)

proc fromFile*(_: typedesc[ImportsCircularA], filename: string): ImportsCircularA =
  ImportsCircularA.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsCircularAObj) =
  close(x.io)

