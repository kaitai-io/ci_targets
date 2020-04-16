import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  RepeatUntilCalcArrayType* = ref object of KaitaiStruct
    records*: seq[RepeatUntilCalcArrayType_Record]
    parent*: KaitaiStruct
    rawRecords*: seq[seq[byte]]
    recsAccessorInst*: seq[RepeatUntilCalcArrayType_Record]
    firstRecInst*: Option[RepeatUntilCalcArrayType_Record]
  RepeatUntilCalcArrayType_Record* = ref object of KaitaiStruct
    marker*: uint8
    body*: uint32
    parent*: RepeatUntilCalcArrayType

proc read*(_: typedesc[RepeatUntilCalcArrayType], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilCalcArrayType
proc read*(_: typedesc[RepeatUntilCalcArrayType_Record], io: KaitaiStream, root: KaitaiStruct, parent: RepeatUntilCalcArrayType): RepeatUntilCalcArrayType_Record

proc recsAccessor*(this: RepeatUntilCalcArrayType): seq[RepeatUntilCalcArrayType_Record]
proc firstRec*(this: RepeatUntilCalcArrayType): RepeatUntilCalcArrayType_Record

proc read*(_: typedesc[RepeatUntilCalcArrayType], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilCalcArrayType =
  template this: untyped = result
  this = new(RepeatUntilCalcArrayType)
  let root = if root == nil: cast[RepeatUntilCalcArrayType](this) else: cast[RepeatUntilCalcArrayType](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while true:
      let buf = this.io.readBytes(int(5))
      this.rawRecords.add(buf)
      let rawRecordsIo = newKaitaiStream(buf)
      let it = RepeatUntilCalcArrayType_Record.read(rawRecordsIo, this.root, this)
      this.records.add(it)
      if it.marker == 170:
        break
      inc i

proc recsAccessor(this: RepeatUntilCalcArrayType): seq[RepeatUntilCalcArrayType_Record] = 
  if this.recsAccessorInst.len != 0:
    return this.recsAccessorInst
  let recsAccessorInstExpr = seq[RepeatUntilCalcArrayType_Record](this.records)
  this.recsAccessorInst = recsAccessorInstExpr
  if this.recsAccessorInst.len != 0:
    return this.recsAccessorInst

proc firstRec(this: RepeatUntilCalcArrayType): RepeatUntilCalcArrayType_Record = 
  if isSome(this.firstRecInst):
    return get(this.firstRecInst)
  let firstRecInstExpr = RepeatUntilCalcArrayType_Record(this.recsAccessor[0])
  this.firstRecInst = firstRecInstExpr
  if isSome(this.firstRecInst):
    return get(this.firstRecInst)

proc fromFile*(_: typedesc[RepeatUntilCalcArrayType], filename: string): RepeatUntilCalcArrayType =
  RepeatUntilCalcArrayType.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[RepeatUntilCalcArrayType_Record], io: KaitaiStream, root: KaitaiStruct, parent: RepeatUntilCalcArrayType): RepeatUntilCalcArrayType_Record =
  template this: untyped = result
  this = new(RepeatUntilCalcArrayType_Record)
  let root = if root == nil: cast[RepeatUntilCalcArrayType](this) else: cast[RepeatUntilCalcArrayType](root)
  this.io = io
  this.root = root
  this.parent = parent

  let markerExpr = this.io.readU1()
  this.marker = markerExpr
  let bodyExpr = this.io.readU4le()
  this.body = bodyExpr

proc fromFile*(_: typedesc[RepeatUntilCalcArrayType_Record], filename: string): RepeatUntilCalcArrayType_Record =
  RepeatUntilCalcArrayType_Record.read(newKaitaiFileStream(filename), nil, nil)

