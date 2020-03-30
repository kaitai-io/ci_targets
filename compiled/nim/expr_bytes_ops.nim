import kaitai_struct_nim_runtime
import options

type
  ExprBytesOps* = ref ExprBytesOpsObj
  ExprBytesOpsObj* = object
    one*: string
    io*: KaitaiStream
    root*: ExprBytesOps
    parent*: ref RootObj
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

### ExprBytesOps ###
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
proc twoLast(this: ExprBytesOps): uint8 = 
  if isSome(this.twoLastInst):
    return get(this.twoLastInst)
  let twoLastInst = this.two[^1]
  this.twoLastInst = some(twoLastInst)
  return get(this.twoLastInst)

proc twoMax(this: ExprBytesOps): uint8 = 
  if isSome(this.twoMaxInst):
    return get(this.twoMaxInst)
  let twoMaxInst = max(this.two)
  this.twoMaxInst = some(twoMaxInst)
  return get(this.twoMaxInst)

proc oneMin(this: ExprBytesOps): uint8 = 
  if isSome(this.oneMinInst):
    return get(this.oneMinInst)
  let oneMinInst = min(this.one)
  this.oneMinInst = some(oneMinInst)
  return get(this.oneMinInst)

proc oneFirst(this: ExprBytesOps): uint8 = 
  if isSome(this.oneFirstInst):
    return get(this.oneFirstInst)
  let oneFirstInst = this.one[0]
  this.oneFirstInst = some(oneFirstInst)
  return get(this.oneFirstInst)

proc oneMid(this: ExprBytesOps): uint8 = 
  if isSome(this.oneMidInst):
    return get(this.oneMidInst)
  let oneMidInst = this.one[1]
  this.oneMidInst = some(oneMidInst)
  return get(this.oneMidInst)

proc two(this: ExprBytesOps): string = 
  if isSome(this.twoInst):
    return get(this.twoInst)
  let twoInst = @[65, 67, 75].mapIt(it.toByte).toString
  this.twoInst = some(twoInst)
  return get(this.twoInst)

proc twoMin(this: ExprBytesOps): uint8 = 
  if isSome(this.twoMinInst):
    return get(this.twoMinInst)
  let twoMinInst = min(this.two)
  this.twoMinInst = some(twoMinInst)
  return get(this.twoMinInst)

proc twoMid(this: ExprBytesOps): uint8 = 
  if isSome(this.twoMidInst):
    return get(this.twoMidInst)
  let twoMidInst = this.two[1]
  this.twoMidInst = some(twoMidInst)
  return get(this.twoMidInst)

proc oneSize(this: ExprBytesOps): int = 
  if isSome(this.oneSizeInst):
    return get(this.oneSizeInst)
  let oneSizeInst = len(this.one)
  this.oneSizeInst = some(oneSizeInst)
  return get(this.oneSizeInst)

proc oneLast(this: ExprBytesOps): uint8 = 
  if isSome(this.oneLastInst):
    return get(this.oneLastInst)
  let oneLastInst = this.one[^1]
  this.oneLastInst = some(oneLastInst)
  return get(this.oneLastInst)

proc twoSize(this: ExprBytesOps): int = 
  if isSome(this.twoSizeInst):
    return get(this.twoSizeInst)
  let twoSizeInst = len(this.two)
  this.twoSizeInst = some(twoSizeInst)
  return get(this.twoSizeInst)

proc oneMax(this: ExprBytesOps): uint8 = 
  if isSome(this.oneMaxInst):
    return get(this.oneMaxInst)
  let oneMaxInst = max(this.one)
  this.oneMaxInst = some(oneMaxInst)
  return get(this.oneMaxInst)

proc twoFirst(this: ExprBytesOps): uint8 = 
  if isSome(this.twoFirstInst):
    return get(this.twoFirstInst)
  let twoFirstInst = this.two[0]
  this.twoFirstInst = some(twoFirstInst)
  return get(this.twoFirstInst)

proc read*(_: typedesc[ExprBytesOps], io: KaitaiStream, root: ExprBytesOps, parent: ref RootObj): ExprBytesOps =
  let this = new(ExprBytesOps)
  let root = if root == nil: cast[ExprBytesOps](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readBytes(int(3))
  this.one = one
  result = this

proc fromFile*(_: typedesc[ExprBytesOps], filename: string): ExprBytesOps =
  ExprBytesOps.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprBytesOpsObj) =
  close(x.io)

