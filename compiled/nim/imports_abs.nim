import ../../../runtime/nim/kaitai



type
  ImportsAbs* = ref ImportsAbsObj
  ImportsAbsObj* = object
    io: KaitaiStream
    root*: ImportsAbs
    parent*: ref RootObj
    len*: VlqBase128Le
    body*: seq[byte]

# ImportsAbs
proc read*(_: typedesc[ImportsAbs], io: KaitaiStream, root: ImportsAbs, parent: ref RootObj): owned ImportsAbs =
  result = new(ImportsAbs)
  let root = if root == nil: cast[ImportsAbs](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let len = VlqBase128Le.read(io)
  result.len = len
  let body = readBytes(io, int(len.value))
  result.body = body


proc fromFile*(_: typedesc[ImportsAbs], filename: string): owned ImportsAbs =
  ImportsAbs.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ImportsAbsObj) =
  close(x.io)

