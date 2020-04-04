import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(ExprBits_items)
const
  foo* = ExprBits_items(1)
  bar* = ExprBits_items(2)

type
  ExprBits* = ref object of KaitaiStruct
    enumSeq*: ExprBits_Items
    a*: uint64
    byteSize*: string
    repeatExpr*: seq[int8]
    switchOnType*: int8
    switchOnEndian*: ExprBits_EndianSwitch
    parent*: KaitaiStruct
    enumInstInst*: Option[ExprBits_Items]
    instPosInst*: Option[int8]
  ExprBits_EndianSwitch* = ref object of KaitaiStruct
    foo*: int16
    parent*: ExprBits
    isLe: bool

proc read*(_: typedesc[ExprBits], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBits
proc read*(_: typedesc[ExprBits_EndianSwitch], io: KaitaiStream, root: KaitaiStruct, parent: ExprBits): ExprBits_EndianSwitch

proc enumInst*(this: ExprBits): ExprBits_Items
proc instPos*(this: ExprBits): int8

proc read*(_: typedesc[ExprBits], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBits =
  template this: untyped = result
  this = new(ExprBits)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.enumSeq = ExprBits_Items(this.io.readBitsInt(2))
  this.a = this.io.readBitsInt(3)
  alignToByte(this.io)
  this.byteSize = this.io.readBytes(int(this.a))
  for i in 0 ..< this.a:
    this.repeatExpr.add(this.io.readS1())
  case this.a
  of 2:
    this.switchOnType = this.io.readS1()
  else: discard
  this.switchOnEndian = ExprBits_EndianSwitch.read(this.io, this.root, this)

proc enumInst(this: ExprBits): ExprBits_Items = 
  if isSome(this.enumInstInst):
    return get(this.enumInstInst)
  this.enumInstInst = some(ExprBits_Items(this.a))
  if isSome(this.enumInstInst):
    return get(this.enumInstInst)

proc instPos(this: ExprBits): int8 = 
  if isSome(this.instPosInst):
    return get(this.instPosInst)
  let pos = this.io.pos()
  this.io.seek(int(this.a))
  this.instPosInst = some(this.io.readS1())
  this.io.seek(pos)
  if isSome(this.instPosInst):
    return get(this.instPosInst)

proc fromFile*(_: typedesc[ExprBits], filename: string): ExprBits =
  ExprBits.read(newKaitaiFileStream(filename), nil, nil)


proc readLe(this: ExprBits_EndianSwitch) =
  this.foo = this.io.readS2le()


proc readBe(this: ExprBits_EndianSwitch) =
  this.foo = this.io.readS2be()

proc read*(_: typedesc[ExprBits_EndianSwitch], io: KaitaiStream, root: KaitaiStruct, parent: ExprBits): ExprBits_EndianSwitch =
  template this: untyped = result
  this = new(ExprBits_EndianSwitch)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent
  this.isLe = false

  case this.parent.a
  of 1:
    this.isLe = true
  of 2:
    this.isLe = false
  else: discard

  if this.isLe:
    readLe(this)
  else:
    readBe(this)

proc fromFile*(_: typedesc[ExprBits_EndianSwitch], filename: string): ExprBits_EndianSwitch =
  ExprBits_EndianSwitch.read(newKaitaiFileStream(filename), nil, nil)

