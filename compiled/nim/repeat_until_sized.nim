import kaitai_struct_nim_runtime
import options

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

## RepeatUntilSized_Record
proc read*(_: typedesc[RepeatUntilSized_Record], io: KaitaiStream, root: RepeatUntilSized, parent: RepeatUntilSized): RepeatUntilSized_Record =
  let this = new(RepeatUntilSized_Record)
  let root = if root == nil: cast[RepeatUntilSized](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.marker = this.io.readU1()
  this.body = this.io.readU4le()
  result = this

proc fromFile*(_: typedesc[RepeatUntilSized_Record], filename: string): RepeatUntilSized_Record =
  RepeatUntilSized_Record.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatUntilSized_RecordObj) =
  close(x.io)

## RepeatUntilSized
proc read*(_: typedesc[RepeatUntilSized], io: KaitaiStream, root: RepeatUntilSized, parent: ref RootObj): RepeatUntilSized =
  let this = new(RepeatUntilSized)
  let root = if root == nil: cast[RepeatUntilSized](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.records = newSeq[RepeatUntilSized_Record]()
  block:
    RepeatUntilSized_Record _;
    var i: int
    while true:
      let it = this.io.readBytes(int(5))
      this.rawRecords.add(it)
      let rawRecordsIo = newKaitaiStringStream(this.rawRecords)
      let _ = RepeatUntilSized_Record.read(rawRecordsIo, this.root, this)
      this.records.add(_)
      if this._.marker == 170:
        break
      inc i
    result = this

  proc fromFile*(_: typedesc[RepeatUntilSized], filename: string): RepeatUntilSized =
    RepeatUntilSized.read(newKaitaiFileStream(filename), nil, nil)

  proc `=destroy`(x: var RepeatUntilSizedObj) =
    close(x.io)

