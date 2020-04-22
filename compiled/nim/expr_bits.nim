import kaitai_struct_nim_runtime
import options

type
  ExprBits* = ref object of KaitaiStruct
    enumSeq*: ExprBits_Items
    a*: uint64
    byteSize*: seq[byte]
    repeatExpr*: seq[int8]
    switchOnType*: int8
    switchOnEndian*: ExprBits_EndianSwitch
    parent*: KaitaiStruct
    enumInstInst*: Option[ExprBits_Items]
    instPosInst*: Option[int8]
  ExprBits_Items* = enum
    foo = 1
    bar = 2
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
  let root = if root == nil: cast[ExprBits](this) else: cast[ExprBits](root)
  this.io = io
  this.root = root
  this.parent = parent

  let enumSeqExpr = ExprBits_Items(this.io.readBitsInt(2))
  this.enumSeq = enumSeqExpr
  let aExpr = this.io.readBitsInt(3)
  this.a = aExpr
  alignToByte(this.io)
  let byteSizeExpr = this.io.readBytes(int(this.a))
  this.byteSize = byteSizeExpr
  for i in 0 ..< int(this.a):
    let it = this.io.readS1()
    this.repeatExpr.add(it)
  block:
    let on = this.a
    if on == 2:
      let switchOnTypeExpr = this.io.readS1()
      this.switchOnType = switchOnTypeExpr
  let switchOnEndianExpr = ExprBits_EndianSwitch.read(this.io, this.root, this)
  this.switchOnEndian = switchOnEndianExpr

proc enumInst(this: ExprBits): ExprBits_Items = 
  if isSome(this.enumInstInst):
    return get(this.enumInstInst)
  let enumInstInstExpr = ExprBits_Items(ExprBits_Items(this.a))
  this.enumInstInst = enumInstInstExpr
  if isSome(this.enumInstInst):
    return get(this.enumInstInst)

proc instPos(this: ExprBits): int8 = 
  if isSome(this.instPosInst):
    return get(this.instPosInst)
  let pos = this.io.pos()
  this.io.seek(int(this.a))
  let instPosInstExpr = this.io.readS1()
  this.instPosInst = instPosInstExpr
  this.io.seek(pos)
  if isSome(this.instPosInst):
    return get(this.instPosInst)

proc fromFile*(_: typedesc[ExprBits], filename: string): ExprBits =
  ExprBits.read(newKaitaiFileStream(filename), nil, nil)


proc readLe(this: ExprBits_EndianSwitch) =
  let fooExpr = this.io.readS2le()
  this.foo = fooExpr


proc readBe(this: ExprBits_EndianSwitch) =
  let fooExpr = this.io.readS2be()
  this.foo = fooExpr

proc read*(_: typedesc[ExprBits_EndianSwitch], io: KaitaiStream, root: KaitaiStruct, parent: ExprBits): ExprBits_EndianSwitch =
  template this: untyped = result
  this = new(ExprBits_EndianSwitch)
  let root = if root == nil: cast[ExprBits](this) else: cast[ExprBits](root)
  this.io = io
  this.root = root
  this.parent = parent
  this.isLe = false

  block:
    let on = this.parent.a
    if on == 1:
      let isLeExpr = bool(true)
      this.isLe = isLeExpr
    elif on == 2:
      let isLeExpr = bool(false)
      this.isLe = isLeExpr

  if this.isLe:
    readLe(this)
  else:
    readBe(this)

proc fromFile*(_: typedesc[ExprBits_EndianSwitch], filename: string): ExprBits_EndianSwitch =
  ExprBits_EndianSwitch.read(newKaitaiFileStream(filename), nil, nil)

