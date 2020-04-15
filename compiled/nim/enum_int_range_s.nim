import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(EnumIntRangeS_constants)
const
  int_min* = EnumIntRangeS_constants(-2147483648)
  zero* = EnumIntRangeS_constants(0)
  int_max* = EnumIntRangeS_constants(2147483647)

type
  EnumIntRangeS* = ref object of KaitaiStruct
    f1*: EnumIntRangeS_Constants
    f2*: EnumIntRangeS_Constants
    f3*: EnumIntRangeS_Constants
    parent*: KaitaiStruct

proc read*(_: typedesc[EnumIntRangeS], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumIntRangeS


proc read*(_: typedesc[EnumIntRangeS], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumIntRangeS =
  template this: untyped = result
  this = new(EnumIntRangeS)
  let root = if root == nil: cast[EnumIntRangeS](this) else: cast[EnumIntRangeS](root)
  this.io = io
  this.root = root
  this.parent = parent

  let f1Expr = EnumIntRangeS_Constants(this.io.readS4be())
  this.f1 = f1Expr
  let f2Expr = EnumIntRangeS_Constants(this.io.readS4be())
  this.f2 = f2Expr
  let f3Expr = EnumIntRangeS_Constants(this.io.readS4be())
  this.f3 = f3Expr

proc fromFile*(_: typedesc[EnumIntRangeS], filename: string): EnumIntRangeS =
  EnumIntRangeS.read(newKaitaiFileStream(filename), nil, nil)

