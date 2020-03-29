import kaitai_struct_nim_runtime

type
  RepeatUntilSized_Record* = ref RepeatUntilSized_RecordObj
  RepeatUntilSized_RecordObj* = object
    marker*: uint8
    body*: uint32
    io*: KaitaiStream
    root*: RepeatUntilSized
    parent*: RepeatUntilSized
  RepeatUntilSized* = ref RepeatUntilSizedObj
  RepeatUntilSizedObj* = object
    records*: seq[RepeatUntilSized_Record]
    io*: KaitaiStream
    root*: RepeatUntilSized
    parent*: ref RootObj
    rawRecords*: seq[string]

### RepeatUntilSized_Record ###
proc read*(_: typedesc[RepeatUntilSized_Record], io: KaitaiStream, root: RepeatUntilSized, parent: RepeatUntilSized): RepeatUntilSized_Record =
  result = new(RepeatUntilSized_Record)
  let root = if root == nil: cast[RepeatUntilSized](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let marker = io.readU1()
  result.marker = marker
  let body = io.readU4le()
  result.body = body

proc fromFile*(_: typedesc[RepeatUntilSized_Record], filename: string): RepeatUntilSized_Record =
  RepeatUntilSized_Record.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatUntilSized_RecordObj) =
  close(x.io)

### RepeatUntilSized ###
proc read*(_: typedesc[RepeatUntilSized], io: KaitaiStream, root: RepeatUntilSized, parent: ref RootObj): RepeatUntilSized =
  result = new(RepeatUntilSized)
  let root = if root == nil: cast[RepeatUntilSized](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  records = newSeq[RepeatUntilSized_Record]()
  block:
    RepeatUntilSized_Record _;
    var i: int
    while true:
      let it = io.readBytes(int(5))
      rawRecords.add(it)
      let rawRecordsIo = newKaitaiStringStream(rawRecords)
      let _ = RepeatUntilSized_Record.read(rawRecordsIo, result, root)
      records.add(_)
      if _.marker == 170:
        break
      inc i

  proc fromFile*(_: typedesc[RepeatUntilSized], filename: string): RepeatUntilSized =
    RepeatUntilSized.read(newKaitaiFileStream(filename), nil, nil)

  proc `=destroy`(x: var RepeatUntilSizedObj) =
    close(x.io)

