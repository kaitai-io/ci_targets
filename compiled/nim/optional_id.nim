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
  result.unnamed0 = result.io.readU1()
  result.unnamed1 = result.io.readU1()
  result.unnamed2 = result.io.readBytes(5)

proc fromFile*(_: typedesc[OptionalId], filename: string): OptionalId =
  OptionalId.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OptionalIdObj) =
  close(x.io)

