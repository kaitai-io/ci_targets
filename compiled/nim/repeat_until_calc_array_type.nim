import kaitai_struct_nim_runtime
import options

type
  RepeatUntilCalcArrayType_Record* = ref RepeatUntilCalcArrayType_RecordObj
  RepeatUntilCalcArrayType_RecordObj* = object
    marker*: uint8
    body*: uint32
    io*: KaitaiStream
    root*: RepeatUntilCalcArrayType
    parent*: RepeatUntilCalcArrayType
  RepeatUntilCalcArrayType* = ref RepeatUntilCalcArrayTypeObj
  RepeatUntilCalcArrayTypeObj* = object
    records*: seq[RepeatUntilCalcArrayType_Record]
    io*: KaitaiStream
    root*: RepeatUntilCalcArrayType
    parent*: ref RootObj
    rawRecords*: seq[string]
    recsAccessorInst*: Option[seq[RepeatUntilCalcArrayType_Record]]
    firstRecInst*: Option[RepeatUntilCalcArrayType_Record]

## RepeatUntilCalcArrayType_Record
proc read*(_: typedesc[RepeatUntilCalcArrayType_Record], io: KaitaiStream, root: RepeatUntilCalcArrayType, parent: RepeatUntilCalcArrayType): RepeatUntilCalcArrayType_Record =
  let this = new(RepeatUntilCalcArrayType_Record)
  let root = if root == nil: cast[RepeatUntilCalcArrayType](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.marker = this.io.readU1()
  this.body = this.io.readU4le()
  result = this

proc fromFile*(_: typedesc[RepeatUntilCalcArrayType_Record], filename: string): RepeatUntilCalcArrayType_Record =
  RepeatUntilCalcArrayType_Record.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatUntilCalcArrayType_RecordObj) =
  close(x.io)

## RepeatUntilCalcArrayType
proc recsAccessor*(this: RepeatUntilCalcArrayType): seq[RepeatUntilCalcArrayType_Record]
proc firstRec*(this: RepeatUntilCalcArrayType): RepeatUntilCalcArrayType_Record
proc recsAccessor(this: RepeatUntilCalcArrayType): seq[RepeatUntilCalcArrayType_Record] = 
  if isSome(this.recsAccessorInst):
    return get(this.recsAccessorInst)
  this.recsAccessorInst = some(this.records)
  return get(this.recsAccessorInst)

proc firstRec(this: RepeatUntilCalcArrayType): RepeatUntilCalcArrayType_Record = 
  if isSome(this.firstRecInst):
    return get(this.firstRecInst)
  this.firstRecInst = some(this.recsAccessor[0])
  return get(this.firstRecInst)

proc read*(_: typedesc[RepeatUntilCalcArrayType], io: KaitaiStream, root: RepeatUntilCalcArrayType, parent: ref RootObj): RepeatUntilCalcArrayType =
  let this = new(RepeatUntilCalcArrayType)
  let root = if root == nil: cast[RepeatUntilCalcArrayType](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.records = newSeq[RepeatUntilCalcArrayType_Record]()
  block:
    RepeatUntilCalcArrayType_Record _;
    var i: int
    while true:
      let it = this.io.readBytes(int(5))
      this.rawRecords.add(it)
      let rawRecordsIo = newKaitaiStringStream(this.rawRecords)
      let _ = RepeatUntilCalcArrayType_Record.read(rawRecordsIo, this.root, this)
      this.records.add(_)
      if this._.marker == 170:
        break
      inc i
    result = this

  proc fromFile*(_: typedesc[RepeatUntilCalcArrayType], filename: string): RepeatUntilCalcArrayType =
    RepeatUntilCalcArrayType.read(newKaitaiFileStream(filename), nil, nil)

  proc `=destroy`(x: var RepeatUntilCalcArrayTypeObj) =
    close(x.io)

