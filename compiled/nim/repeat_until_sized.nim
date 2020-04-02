import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  RepeatUntilSized* = ref object of KaitaiStruct
    records*: seq[RepeatUntilSized_Record]
    parent*: KaitaiStruct
    rawRecords*: seq[string]
  RepeatUntilSized_Record* = ref object of KaitaiStruct
    marker*: uint8
    body*: uint32
    parent*: RepeatUntilSized

proc read*(_: typedesc[RepeatUntilSized], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilSized
proc read*(_: typedesc[RepeatUntilSized_Record], io: KaitaiStream, root: KaitaiStruct, parent: RepeatUntilSized): RepeatUntilSized_Record

proc read*(_: typedesc[RepeatUntilSized], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilSized =
  template this: untyped = result
  this = new(RepeatUntilSized)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
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

  proc fromFile*(_: typedesc[RepeatUntilSized], filename: string): RepeatUntilSized =
    RepeatUntilSized.read(newKaitaiFileStream(filename), nil, nil)

  proc read*(_: typedesc[RepeatUntilSized_Record], io: KaitaiStream, root: KaitaiStruct, parent: RepeatUntilSized): RepeatUntilSized_Record =
    template this: untyped = result
    this = new(RepeatUntilSized_Record)
    let root = if root == nil: cast[KaitaiStruct](this) else: root
    this.io = io
    this.root = root
    this.parent = parent

    this.marker = this.io.readU1()
    this.body = this.io.readU4le()

  proc fromFile*(_: typedesc[RepeatUntilSized_Record], filename: string): RepeatUntilSized_Record =
    RepeatUntilSized_Record.read(newKaitaiFileStream(filename), nil, nil)

