import ../../runtime/nim/kaitai



type
  OptionalId* = ref OptionalIdObj
  OptionalIdObj* = object
    io: KaitaiStream
    root*: OptionalId
    parent*: ref RootObj
    unnamed0*: uint8
    unnamed1*: uint8
    unnamed2*: seq[byte]

# OptionalId
proc read*(_: typedesc[OptionalId], io: KaitaiStream, root: OptionalId, parent: ref RootObj): owned OptionalId =
  result = new(OptionalId)
  let root = if root == nil: cast[OptionalId](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.unnamed0 = readU1(io)
  result.unnamed1 = readU1(io)
  result.unnamed2 = readBytes(io, int(5))

proc fromFile*(_: typedesc[OptionalId], filename: string): owned OptionalId =
  OptionalId.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var OptionalIdObj) =
  close(x.io)

