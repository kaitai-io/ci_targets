import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprBytesOps* = ref object of KaitaiStruct
    one*: string
    parent*: KaitaiStruct
    twoLastInst*: Option[uint8]
    twoMaxInst*: Option[uint8]
    oneMinInst*: Option[uint8]
    oneFirstInst*: Option[uint8]
    oneMidInst*: Option[uint8]
    twoInst*: Option[string]
    twoMinInst*: Option[uint8]
    twoMidInst*: Option[uint8]
    oneSizeInst*: Option[int]
    oneLastInst*: Option[uint8]
    twoSizeInst*: Option[int]
    oneMaxInst*: Option[uint8]
    twoFirstInst*: Option[uint8]

proc read*(_: typedesc[ExprBytesOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBytesOps

proc twoLast*(this: ExprBytesOps): uint8
proc twoMax*(this: ExprBytesOps): uint8
proc oneMin*(this: ExprBytesOps): uint8
proc oneFirst*(this: ExprBytesOps): uint8
proc oneMid*(this: ExprBytesOps): uint8
proc two*(this: ExprBytesOps): string
proc twoMin*(this: ExprBytesOps): uint8
proc twoMid*(this: ExprBytesOps): uint8
proc oneSize*(this: ExprBytesOps): int
proc oneLast*(this: ExprBytesOps): uint8
proc twoSize*(this: ExprBytesOps): int
proc oneMax*(this: ExprBytesOps): uint8
proc twoFirst*(this: ExprBytesOps): uint8
proc read*(_: typedesc[ExprBytesOps], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprBytesOps =
  template this: untyped = result
  this = new(ExprBytesOps)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readBytes(int(3))

proc twoLast(this: ExprBytesOps): uint8 = 
  if isSome(this.twoLastInst):
    return get(this.twoLastInst)
  this.twoLastInst = some(this.two[^1])
  return get(this.twoLastInst)

proc twoMax(this: ExprBytesOps): uint8 = 
  if isSome(this.twoMaxInst):
    return get(this.twoMaxInst)
  this.twoMaxInst = some(max(this.two))
  return get(this.twoMaxInst)

proc oneMin(this: ExprBytesOps): uint8 = 
  if isSome(this.oneMinInst):
    return get(this.oneMinInst)
  this.oneMinInst = some(min(this.one))
  return get(this.oneMinInst)

proc oneFirst(this: ExprBytesOps): uint8 = 
  if isSome(this.oneFirstInst):
    return get(this.oneFirstInst)
  this.oneFirstInst = some(this.one[0])
  return get(this.oneFirstInst)

proc oneMid(this: ExprBytesOps): uint8 = 
  if isSome(this.oneMidInst):
    return get(this.oneMidInst)
  this.oneMidInst = some(this.one[1])
  return get(this.oneMidInst)

proc two(this: ExprBytesOps): string = 
  if isSome(this.twoInst):
    return get(this.twoInst)
  this.twoInst = some(@[65'i8, 67, 75].toString)
  return get(this.twoInst)

proc twoMin(this: ExprBytesOps): uint8 = 
  if isSome(this.twoMinInst):
    return get(this.twoMinInst)
  this.twoMinInst = some(min(this.two))
  return get(this.twoMinInst)

proc twoMid(this: ExprBytesOps): uint8 = 
  if isSome(this.twoMidInst):
    return get(this.twoMidInst)
  this.twoMidInst = some(this.two[1])
  return get(this.twoMidInst)

proc oneSize(this: ExprBytesOps): int = 
  if isSome(this.oneSizeInst):
    return get(this.oneSizeInst)
  this.oneSizeInst = some(len(this.one))
  return get(this.oneSizeInst)

proc oneLast(this: ExprBytesOps): uint8 = 
  if isSome(this.oneLastInst):
    return get(this.oneLastInst)
  this.oneLastInst = some(this.one[^1])
  return get(this.oneLastInst)

proc twoSize(this: ExprBytesOps): int = 
  if isSome(this.twoSizeInst):
    return get(this.twoSizeInst)
  this.twoSizeInst = some(len(this.two))
  return get(this.twoSizeInst)

proc oneMax(this: ExprBytesOps): uint8 = 
  if isSome(this.oneMaxInst):
    return get(this.oneMaxInst)
  this.oneMaxInst = some(max(this.one))
  return get(this.oneMaxInst)

proc twoFirst(this: ExprBytesOps): uint8 = 
  if isSome(this.twoFirstInst):
    return get(this.twoFirstInst)
  this.twoFirstInst = some(this.two[0])
  return get(this.twoFirstInst)

proc fromFile*(_: typedesc[ExprBytesOps], filename: string): ExprBytesOps =
  ExprBytesOps.read(newKaitaiFileStream(filename), nil, nil)

