import ../runtime/nim/kaitai_struct_nim_runtime



type
  ImportsCircularA* = ref ImportsCircularAObj
  ImportsCircularAObj* = object
    io: KaitaiStream
    root*: ImportsCircularA
    parent*: ref RootObj
    code*: uint8
    two*: ImportsCircularB

# ImportsCircularA
proc read*(_: typedesc[ImportsCircularA], io: KaitaiStream, root: ImportsCircularA, parent: ref RootObj): owned ImportsCircularA =
  result = new(ImportsCircularA)
  let root = if root == nil: cast[ImportsCircularA](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let code = readU1(io)
  result.code = code
  let two = ImportsCircularB.read(io)
  result.two = two


proc fromFile*(_: typedesc[ImportsCircularA], filename: string): owned ImportsCircularA =
  ImportsCircularA.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ImportsCircularAObj) =
  close(x.io)

