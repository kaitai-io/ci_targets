import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  NonStandard* = ref object of KaitaiStruct
    foo*: uint8
    bar*: uint32
    parent*: KaitaiStruct
    viInst*: Option[uint8]
    piInst*: Option[uint8]

proc read*(_: typedesc[NonStandard], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NonStandard

proc vi*(this: NonStandard): uint8
proc pi*(this: NonStandard): uint8

proc read*(_: typedesc[NonStandard], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NonStandard =
  template this: untyped = result
  this = new(NonStandard)
  let root = if root == nil: cast[NonStandard](this) else: cast[NonStandard](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr
  case ord(this.foo)
  of 42:
    let barExpr = uint32(this.io.readU2le())
    this.bar = barExpr
  of 43:
    let barExpr = this.io.readU4le()
    this.bar = barExpr
  else: discard

proc vi(this: NonStandard): uint8 = 
  if isSome(this.viInst):
    return get(this.viInst)
  let viInstExpr = uint8(this.foo)
  this.viInst = viInstExpr
  if isSome(this.viInst):
    return get(this.viInst)

proc pi(this: NonStandard): uint8 = 
  if isSome(this.piInst):
    return get(this.piInst)
  let pos = this.io.pos()
  this.io.seek(int(0))
  let piInstExpr = this.io.readU1()
  this.piInst = piInstExpr
  this.io.seek(pos)
  if isSome(this.piInst):
    return get(this.piInst)

proc fromFile*(_: typedesc[NonStandard], filename: string): NonStandard =
  NonStandard.read(newKaitaiFileStream(filename), nil, nil)

