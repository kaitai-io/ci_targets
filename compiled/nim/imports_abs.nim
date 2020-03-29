import kaitai_struct_nim_runtime

type
  ImportsAbs* = ref ImportsAbsObj
  ImportsAbsObj* = object
    len*: VlqBase128Le
    body*: string
    io*: KaitaiStream
    root*: ImportsAbs
    parent*: ref RootObj

### ImportsAbs ###
proc read*(_: typedesc[ImportsAbs], io: KaitaiStream, root: ImportsAbs, parent: ref RootObj): ImportsAbs =
  result = new(ImportsAbs)
  let root = if root == nil: cast[ImportsAbs](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let len = VlqBase128Le.read(io)
  result.len = len
  let body = io.readBytes(int(len.value))
  result.body = body

proc fromFile*(_: typedesc[ImportsAbs], filename: string): ImportsAbs =
  ImportsAbs.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsAbsObj) =
  close(x.io)

