import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  OptionalId* = ref object of KaitaiStruct
    unnamed0*: uint8
    unnamed1*: uint8
    unnamed2*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[OptionalId], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OptionalId

proc read*(_: typedesc[OptionalId], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): OptionalId =
  template this: untyped = result
  this = new(OptionalId)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.unnamed0 = this.io.readU1()
  this.unnamed1 = this.io.readU1()
  this.unnamed2 = this.io.readBytes(int(5))

proc fromFile*(_: typedesc[OptionalId], filename: string): OptionalId =
  OptionalId.read(newKaitaiFileStream(filename), nil, nil)

