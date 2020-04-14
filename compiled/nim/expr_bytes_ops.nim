import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprBytesOps* = ref object of KaitaiStruct
    one*: seq[byte]
    parent*: KaitaiStruct
    twoLastInst*: Option[uint8]
    twoMaxInst*: Option[uint8]
    oneMinInst*: Option[uint8]
    oneFirstInst*: Option[uint8]
    oneMidInst*: Option[uint8]
    twoInst*: seq[byte]
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
proc two*(this: ExprBytesOps): seq[byte]
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
  let root = if root == nil: cast[ExprBytesOps](this) else: cast[ExprBytesOps](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readBytes(int(3))

proc twoLast(this: ExprBytesOps): uint8 = 
  if isSome(this.twoLastInst):
    return get(this.twoLastInst)
  this.twoLastInst = uint8(this.two[^1])
  if isSome(this.twoLastInst):
    return get(this.twoLastInst)

proc twoMax(this: ExprBytesOps): uint8 = 
  if isSome(this.twoMaxInst):
    return get(this.twoMaxInst)
  this.twoMaxInst = uint8(max(this.two))
  if isSome(this.twoMaxInst):
    return get(this.twoMaxInst)

proc oneMin(this: ExprBytesOps): uint8 = 
  if isSome(this.oneMinInst):
    return get(this.oneMinInst)
  this.oneMinInst = uint8(min(this.one))
  if isSome(this.oneMinInst):
    return get(this.oneMinInst)

proc oneFirst(this: ExprBytesOps): uint8 = 
  if isSome(this.oneFirstInst):
    return get(this.oneFirstInst)
  this.oneFirstInst = uint8(this.one[0])
  if isSome(this.oneFirstInst):
    return get(this.oneFirstInst)

proc oneMid(this: ExprBytesOps): uint8 = 
  if isSome(this.oneMidInst):
    return get(this.oneMidInst)
  this.oneMidInst = uint8(this.one[1])
  if isSome(this.oneMidInst):
    return get(this.oneMidInst)

proc two(this: ExprBytesOps): seq[byte] = 
  if this.twoInst.len != 0:
    return this.twoInst
  this.twoInst = seq[byte](@[65'u8, 67'u8, 75'u8])
  if this.twoInst.len != 0:
    return this.twoInst

proc twoMin(this: ExprBytesOps): uint8 = 
  if isSome(this.twoMinInst):
    return get(this.twoMinInst)
  this.twoMinInst = uint8(min(this.two))
  if isSome(this.twoMinInst):
    return get(this.twoMinInst)

proc twoMid(this: ExprBytesOps): uint8 = 
  if isSome(this.twoMidInst):
    return get(this.twoMidInst)
  this.twoMidInst = uint8(this.two[1])
  if isSome(this.twoMidInst):
    return get(this.twoMidInst)

proc oneSize(this: ExprBytesOps): int = 
  if isSome(this.oneSizeInst):
    return get(this.oneSizeInst)
  this.oneSizeInst = int(len(this.one))
  if isSome(this.oneSizeInst):
    return get(this.oneSizeInst)

proc oneLast(this: ExprBytesOps): uint8 = 
  if isSome(this.oneLastInst):
    return get(this.oneLastInst)
  this.oneLastInst = uint8(this.one[^1])
  if isSome(this.oneLastInst):
    return get(this.oneLastInst)

proc twoSize(this: ExprBytesOps): int = 
  if isSome(this.twoSizeInst):
    return get(this.twoSizeInst)
  this.twoSizeInst = int(len(this.two))
  if isSome(this.twoSizeInst):
    return get(this.twoSizeInst)

proc oneMax(this: ExprBytesOps): uint8 = 
  if isSome(this.oneMaxInst):
    return get(this.oneMaxInst)
  this.oneMaxInst = uint8(max(this.one))
  if isSome(this.oneMaxInst):
    return get(this.oneMaxInst)

proc twoFirst(this: ExprBytesOps): uint8 = 
  if isSome(this.twoFirstInst):
    return get(this.twoFirstInst)
  this.twoFirstInst = uint8(this.two[0])
  if isSome(this.twoFirstInst):
    return get(this.twoFirstInst)

proc fromFile*(_: typedesc[ExprBytesOps], filename: string): ExprBytesOps =
  ExprBytesOps.read(newKaitaiFileStream(filename), nil, nil)

