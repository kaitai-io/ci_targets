import kaitai_struct_nim_runtime
import options

type
  ExprBits_EndianSwitch* = ref ExprBits_EndianSwitchObj
  ExprBits_EndianSwitchObj* = object
    foo*: int16
    io*: KaitaiStream
    root*: ExprBits
    parent*: ExprBits
    isLe: bool
  ExprBits* = ref ExprBitsObj
  ExprBitsObj* = object
    enumSeq*: ExprBits_Items
    a*: uint64
    byteSize*: string
    repeatExpr*: seq[int8]
    switchOnType*: int8
    switchOnEndian*: ExprBits_EndianSwitch
    io*: KaitaiStream
    root*: ExprBits
    parent*: ref RootObj
    enumInstInst*: Option[ExprBits_Items]
    instPosInst*: Option[int8]
  ExprBits_items* = enum
    foo = 1
    bar = 2

## ExprBits_EndianSwitch

proc readLe(subject: ExprBits_EndianSwitch) =
  this.foo = this.io.readS2le()
  result = this


proc readBe(subject: ExprBits_EndianSwitch) =
  this.foo = this.io.readS2be()
  result = this

proc read*(_: typedesc[ExprBits_EndianSwitch], io: KaitaiStream, root: ExprBits, parent: ExprBits): ExprBits_EndianSwitch =
  let this = new(ExprBits_EndianSwitch)
  let root = if root == nil: cast[ExprBits](result) else: root
  this.io = io
  this.root = root
  this.parent = parent
  result.isLe = false


  if result.isLe:
    readLe(result)
  else:
    readBe(result)
  result = this

proc fromFile*(_: typedesc[ExprBits_EndianSwitch], filename: string): ExprBits_EndianSwitch =
  ExprBits_EndianSwitch.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprBits_EndianSwitchObj) =
  close(x.io)

## ExprBits
proc enumInst*(this: ExprBits): ExprBits_Items
proc instPos*(this: ExprBits): int8
proc enumInst(this: ExprBits): ExprBits_Items = 
  if isSome(this.enumInstInst):
    return get(this.enumInstInst)
  this.enumInstInst = some(ExprBits_Items(this.a))
  return get(this.enumInstInst)

proc instPos(this: ExprBits): int8 = 
  if isSome(this.instPosInst):
    return get(this.instPosInst)
  let pos = this.io.pos()
  this.io.seek(this.a)
  this.instPosInst = some(this.io.readS1())
  this.io.seek(pos)
  return get(this.instPosInst)

proc read*(_: typedesc[ExprBits], io: KaitaiStream, root: ExprBits, parent: ref RootObj): ExprBits =
  let this = new(ExprBits)
  let root = if root == nil: cast[ExprBits](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.enumSeq = ExprBits_Items(this.io.readBitsInt(2))
  this.a = this.io.readBitsInt(3)
  alignToByte(this.io)
  this.byteSize = this.io.readBytes(int(this.a))
  repeatExpr = newSeq[int8](this.a)
  for i in 0 ..< this.a:
    this.repeatExpr.add(this.io.readS1())
  case this.a
  of 2:
    this.switchOnType = this.io.readS1()
  this.switchOnEndian = ExprBits_EndianSwitch.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[ExprBits], filename: string): ExprBits =
  ExprBits.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprBitsObj) =
  close(x.io)

