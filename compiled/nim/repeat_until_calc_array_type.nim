import kaitai_struct_nim_runtime

type
  RepeatUntilCalcArrayTyperecord* = ref RepeatUntilCalcArrayTyperecordObj
  RepeatUntilCalcArrayTyperecordObj* = object
    records*: seq[Record]
    io*: KaitaiStream
    root*: RepeatUntilCalcArrayType
    parent*: ref RootObj
    rawRecords*: seq[string]
  RepeatUntilCalcArrayType* = ref RepeatUntilCalcArrayTypeObj
  RepeatUntilCalcArrayTypeObj* = object
    records*: seq[Record]
    io*: KaitaiStream
    root*: RepeatUntilCalcArrayType
    parent*: ref RootObj
    rawRecords*: seq[string]

### RepeatUntilCalcArrayTyperecord ###
proc read*(_: typedesc[RepeatUntilCalcArrayTyperecord], io: KaitaiStream, root: RepeatUntilCalcArrayType, parent: RepeatUntilCalcArrayType): RepeatUntilCalcArrayTyperecord =
  result = new(RepeatUntilCalcArrayTyperecord)
  let root = if root == nil: cast[RepeatUntilCalcArrayType](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.marker = result.io.readU1()
  result.body = result.io.readU4le()

proc fromFile*(_: typedesc[RepeatUntilCalcArrayTyperecord], filename: string): RepeatUntilCalcArrayTyperecord =
  RepeatUntilCalcArrayTyperecord.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatUntilCalcArrayTyperecordObj) =
  close(x.io)

### RepeatUntilCalcArrayType ###
proc read*(_: typedesc[RepeatUntilCalcArrayType], io: KaitaiStream, root: RepeatUntilCalcArrayType, parent: ref RootObj): RepeatUntilCalcArrayType =
  result = new(RepeatUntilCalcArrayType)
  let root = if root == nil: cast[RepeatUntilCalcArrayType](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.records = newSeq[Record]()
  block:
    Record _;
    var i: int
    while true:
      let it = result.io.readBytes(5)
      result.rawRecords.add(it)
      rawRecordsIo = newKaitaiStringStream(rawRecords)
      let _ = Record.read(rawRecordsIo, result, root)
      result.records.add(_)
      if _.marker == 170:
        break
      inc i

  proc fromFile*(_: typedesc[RepeatUntilCalcArrayType], filename: string): RepeatUntilCalcArrayType =
    RepeatUntilCalcArrayType.read(newKaitaiFileStream(filename), nil, nil)

  proc `=destroy`(x: var RepeatUntilCalcArrayTypeObj) =
    close(x.io)

