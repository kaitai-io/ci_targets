import kaitai_struct_nim_runtime
import options

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
  let this = new(OptionalId)
  let root = if root == nil: cast[OptionalId](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let unnamed0 = this.io.readU1()
  this.unnamed0 = unnamed0
  let unnamed1 = this.io.readU1()
  this.unnamed1 = unnamed1
  let unnamed2 = this.io.readBytes(int(5))
  this.unnamed2 = unnamed2
  result = this

proc fromFile*(_: typedesc[OptionalId], filename: string): OptionalId =
  OptionalId.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var OptionalIdObj) =
  close(x.io)

