import kaitai_struct_nim_runtime

type
  RepeatUntilSizedrecord* = ref RepeatUntilSizedrecordObj
  RepeatUntilSizedrecordObj* = object
    records*: seq[Record]
    io*: KaitaiStream
    root*: RepeatUntilSized
    parent*: ref RootObj
    rawRecords*: seq[string]
  RepeatUntilSized* = ref RepeatUntilSizedObj
  RepeatUntilSizedObj* = object
    records*: seq[Record]
    io*: KaitaiStream
    root*: RepeatUntilSized
    parent*: ref RootObj
    rawRecords*: seq[string]

### RepeatUntilSizedrecord ###
proc read*(_: typedesc[RepeatUntilSizedrecord], io: KaitaiStream, root: RepeatUntilSized, parent: RepeatUntilSized): RepeatUntilSizedrecord =
  result = new(RepeatUntilSizedrecord)
  let root = if root == nil: cast[RepeatUntilSized](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.marker = result.io.readU1()
  result.body = result.io.readU4le()

proc fromFile*(_: typedesc[RepeatUntilSizedrecord], filename: string): RepeatUntilSizedrecord =
  RepeatUntilSizedrecord.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatUntilSizedrecordObj) =
  close(x.io)

### RepeatUntilSized ###
proc read*(_: typedesc[RepeatUntilSized], io: KaitaiStream, root: RepeatUntilSized, parent: ref RootObj): RepeatUntilSized =
  result = new(RepeatUntilSized)
  let root = if root == nil: cast[RepeatUntilSized](result) else: root
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

  proc fromFile*(_: typedesc[RepeatUntilSized], filename: string): RepeatUntilSized =
    RepeatUntilSized.read(newKaitaiFileStream(filename), nil, nil)

  proc `=destroy`(x: var RepeatUntilSizedObj) =
    close(x.io)

