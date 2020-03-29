import kaitai_struct_nim_runtime

type
  OptionalId* = ref OptionalIdObj
  OptionalIdObj* = object
    unnamed0*: uint8
    unnamed1*: uint8
    unnamed2*: string
    io*: KaitaiStream
    root*: OptionalId
    parent*: ref RootObj

### OptionalId ###
proc read*(_: typedesc[OptionalId], io: KaitaiStream, root: OptionalId, parent: ref RootObj): OptionalId =
  result = new(OptionalId)
  let root = if root == nil: cast[OptionalId](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let unnamed0 = io.readU1()
  result.unnamed0 = unnamed0
  let unnamed1 = io.readU1()
  result.unnamed1 = unnamed1
  let unnamed2 = io.readBytes(int(5))
  result.unnamed2 = unnamed2

proc fromFile*(_: typedesc[OptionalId], filename: string): OptionalId =
  OptionalId.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OptionalIdObj) =
  close(x.io)

