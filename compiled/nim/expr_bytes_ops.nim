import ../../../runtime/nim/kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  ExprBytesOps* = ref ExprBytesOpsObj
  ExprBytesOpsObj* = object
    io: KaitaiStream
    root*: ExprBytesOps
    parent*: ref RootObj
    one*: seq[byte]
    twoLastInst: proc(): uint8
    twoMaxInst: proc(): uint8
    oneMinInst: proc(): uint8
    oneFirstInst: proc(): uint8
    oneMidInst: proc(): uint8
    twoInst: proc(): seq[byte]
    twoMinInst: proc(): uint8
    twoMidInst: proc(): uint8
    oneSizeInst: proc(): int
    oneLastInst: proc(): uint8
    twoSizeInst: proc(): int
    oneMaxInst: proc(): uint8
    twoFirstInst: proc(): uint8

# ExprBytesOps
template `.`*(a: ExprBytesOps, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[ExprBytesOps], io: KaitaiStream, root: ExprBytesOps, parent: ref RootObj): owned ExprBytesOps =
  result = new(ExprBytesOps)
  let root = if root == nil: cast[ExprBytesOps](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let one = readBytes(io, int(3))
  result.one = one

  var twoLastVal: Option[uint8]
  let twoLast = proc(): uint8 =
    if isNone(twoLastVal):
      twoLastVal = some(uint8(two[^1]))
    get(twoLastVal)
  result.twoLastInst = twoLast
  var twoMaxVal: Option[uint8]
  let twoMax = proc(): uint8 =
    if isNone(twoMaxVal):
      twoMaxVal = some(uint8(max(two)))
    get(twoMaxVal)
  result.twoMaxInst = twoMax
  var oneMinVal: Option[uint8]
  let oneMin = proc(): uint8 =
    if isNone(oneMinVal):
      oneMinVal = some(uint8(min(one)))
    get(oneMinVal)
  result.oneMinInst = oneMin
  var oneFirstVal: Option[uint8]
  let oneFirst = proc(): uint8 =
    if isNone(oneFirstVal):
      oneFirstVal = some(uint8(one[0]))
    get(oneFirstVal)
  result.oneFirstInst = oneFirst
  var oneMidVal: Option[uint8]
  let oneMid = proc(): uint8 =
    if isNone(oneMidVal):
      oneMidVal = some(uint8(one[1]))
    get(oneMidVal)
  result.oneMidInst = oneMid
  var twoVal: Option[seq[byte]]
  let two = proc(): seq[byte] =
    if isNone(twoVal):
      twoVal = some(seq[byte](@[65, 67, 75].mapIt(toByte(it))))
    get(twoVal)
  result.twoInst = two
  var twoMinVal: Option[uint8]
  let twoMin = proc(): uint8 =
    if isNone(twoMinVal):
      twoMinVal = some(uint8(min(two)))
    get(twoMinVal)
  result.twoMinInst = twoMin
  var twoMidVal: Option[uint8]
  let twoMid = proc(): uint8 =
    if isNone(twoMidVal):
      twoMidVal = some(uint8(two[1]))
    get(twoMidVal)
  result.twoMidInst = twoMid
  var oneSizeVal: Option[int]
  let oneSize = proc(): int =
    if isNone(oneSizeVal):
      oneSizeVal = some(int(len(one)))
    get(oneSizeVal)
  result.oneSizeInst = oneSize
  var oneLastVal: Option[uint8]
  let oneLast = proc(): uint8 =
    if isNone(oneLastVal):
      oneLastVal = some(uint8(one[^1]))
    get(oneLastVal)
  result.oneLastInst = oneLast
  var twoSizeVal: Option[int]
  let twoSize = proc(): int =
    if isNone(twoSizeVal):
      twoSizeVal = some(int(len(two)))
    get(twoSizeVal)
  result.twoSizeInst = twoSize
  var oneMaxVal: Option[uint8]
  let oneMax = proc(): uint8 =
    if isNone(oneMaxVal):
      oneMaxVal = some(uint8(max(one)))
    get(oneMaxVal)
  result.oneMaxInst = oneMax
  var twoFirstVal: Option[uint8]
  let twoFirst = proc(): uint8 =
    if isNone(twoFirstVal):
      twoFirstVal = some(uint8(two[0]))
    get(twoFirstVal)
  result.twoFirstInst = twoFirst

proc fromFile*(_: typedesc[ExprBytesOps], filename: string): owned ExprBytesOps =
  ExprBytesOps.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ExprBytesOpsObj) =
  close(x.io)

