import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(EnumForUnknownId_animal)
const
  dog* = EnumForUnknownId_animal(4)
  cat* = EnumForUnknownId_animal(7)
  chicken* = EnumForUnknownId_animal(12)

type
  EnumForUnknownId* = ref object of KaitaiStruct
    one*: EnumForUnknownId_Animal
    parent*: KaitaiStruct

proc read*(_: typedesc[EnumForUnknownId], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumForUnknownId


proc read*(_: typedesc[EnumForUnknownId], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumForUnknownId =
  template this: untyped = result
  this = new(EnumForUnknownId)
  let root = if root == nil: cast[EnumForUnknownId](this) else: cast[EnumForUnknownId](root)
  this.io = io
  this.root = root
  this.parent = parent

  let oneExpr = EnumForUnknownId_Animal(this.io.readU1())
  this.one = oneExpr

proc fromFile*(_: typedesc[EnumForUnknownId], filename: string): EnumForUnknownId =
  EnumForUnknownId.read(newKaitaiFileStream(filename), nil, nil)

