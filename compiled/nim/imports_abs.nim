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
  result.len = VlqBase128Le.read(result.io)
  result.body = result.io.readBytes(len.value)

proc fromFile*(_: typedesc[ImportsAbs], filename: string): ImportsAbs =
  ImportsAbs.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsAbsObj) =
  close(x.io)

