import kaitai_struct_nim_runtime
import options

type
  EnumForUnknownId* = ref EnumForUnknownIdObj
  EnumForUnknownIdObj* = object
    one*: EnumForUnknownId_Animal
    io*: KaitaiStream
    root*: EnumForUnknownId
    parent*: ref RootObj
  EnumForUnknownId_animal* = enum
    dog = 4
    cat = 7
    chicken = 12

## EnumForUnknownId
proc read*(_: typedesc[EnumForUnknownId], io: KaitaiStream, root: EnumForUnknownId, parent: ref RootObj): EnumForUnknownId =
  let this = new(EnumForUnknownId)
  let root = if root == nil: cast[EnumForUnknownId](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = EnumForUnknownId_Animal(this.io.readU1())
  result = this

proc fromFile*(_: typedesc[EnumForUnknownId], filename: string): EnumForUnknownId =
  EnumForUnknownId.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EnumForUnknownIdObj) =
  close(x.io)

