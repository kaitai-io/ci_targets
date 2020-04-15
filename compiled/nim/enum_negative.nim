import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(EnumNegative_constants)
const
  negative_one* = EnumNegative_constants(-1)
  positive_one* = EnumNegative_constants(1)

type
  EnumNegative* = ref object of KaitaiStruct
    f1*: EnumNegative_Constants
    f2*: EnumNegative_Constants
    parent*: KaitaiStruct

proc read*(_: typedesc[EnumNegative], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumNegative


proc read*(_: typedesc[EnumNegative], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumNegative =
  template this: untyped = result
  this = new(EnumNegative)
  let root = if root == nil: cast[EnumNegative](this) else: cast[EnumNegative](root)
  this.io = io
  this.root = root
  this.parent = parent

  let f1Expr = EnumNegative_Constants(this.io.readS1())
  this.f1 = f1Expr
  let f2Expr = EnumNegative_Constants(this.io.readS1())
  this.f2 = f2Expr

proc fromFile*(_: typedesc[EnumNegative], filename: string): EnumNegative =
  EnumNegative.read(newKaitaiFileStream(filename), nil, nil)

