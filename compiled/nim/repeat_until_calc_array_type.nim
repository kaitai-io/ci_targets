import kaitai_struct_nim_runtime

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

### RepeatUntilCalcArrayType_Record ###
proc read*(_: typedesc[RepeatUntilCalcArrayType_Record], io: KaitaiStream, root: RepeatUntilCalcArrayType, parent: RepeatUntilCalcArrayType): RepeatUntilCalcArrayType_Record =
  result = new(RepeatUntilCalcArrayType_Record)
  let root = if root == nil: cast[RepeatUntilCalcArrayType](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let marker = io.readU1()
  result.marker = marker
  let body = io.readU4le()
  result.body = body

proc fromFile*(_: typedesc[RepeatUntilCalcArrayType_Record], filename: string): RepeatUntilCalcArrayType_Record =
  RepeatUntilCalcArrayType_Record.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatUntilCalcArrayType_RecordObj) =
  close(x.io)

### RepeatUntilCalcArrayType ###
proc read*(_: typedesc[RepeatUntilCalcArrayType], io: KaitaiStream, root: RepeatUntilCalcArrayType, parent: ref RootObj): RepeatUntilCalcArrayType =
  result = new(RepeatUntilCalcArrayType)
  let root = if root == nil: cast[RepeatUntilCalcArrayType](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  records = newSeq[RepeatUntilCalcArrayType_Record]()
  block:
    RepeatUntilCalcArrayType_Record _;
    var i: int
    while true:
      let it = io.readBytes(int(5))
      rawRecords.add(it)
      let rawRecordsIo = newKaitaiStringStream(rawRecords)
      let _ = RepeatUntilCalcArrayType_Record.read(rawRecordsIo, result, root)
      records.add(_)
      if _.marker == 170:
        break
      inc i

  proc fromFile*(_: typedesc[RepeatUntilCalcArrayType], filename: string): RepeatUntilCalcArrayType =
    RepeatUntilCalcArrayType.read(newKaitaiFileStream(filename), nil, nil)

  proc `=destroy`(x: var RepeatUntilCalcArrayTypeObj) =
    close(x.io)

