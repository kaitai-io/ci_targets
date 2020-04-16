import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  RepeatUntilSized* = ref object of KaitaiStruct
    records*: seq[RepeatUntilSized_Record]
    parent*: KaitaiStruct
    rawRecords*: seq[seq[byte]]
  RepeatUntilSized_Record* = ref object of KaitaiStruct
    marker*: uint8
    body*: uint32
    parent*: RepeatUntilSized

proc read*(_: typedesc[RepeatUntilSized], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilSized
proc read*(_: typedesc[RepeatUntilSized_Record], io: KaitaiStream, root: KaitaiStruct, parent: RepeatUntilSized): RepeatUntilSized_Record


proc read*(_: typedesc[RepeatUntilSized], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatUntilSized =
  template this: untyped = result
  this = new(RepeatUntilSized)
  let root = if root == nil: cast[RepeatUntilSized](this) else: cast[RepeatUntilSized](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while true:
      let buf = this.io.readBytes(int(5))
      this.rawRecords.add(buf)
      let rawRecordsIo = newKaitaiStream(buf)
      let it = RepeatUntilSized_Record.read(rawRecordsIo, this.root, this)
      this.records.add(it)
      if it.marker == 170:
        break
      inc i

proc fromFile*(_: typedesc[RepeatUntilSized], filename: string): RepeatUntilSized =
  RepeatUntilSized.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[RepeatUntilSized_Record], io: KaitaiStream, root: KaitaiStruct, parent: RepeatUntilSized): RepeatUntilSized_Record =
  template this: untyped = result
  this = new(RepeatUntilSized_Record)
  let root = if root == nil: cast[RepeatUntilSized](this) else: cast[RepeatUntilSized](root)
  this.io = io
  this.root = root
  this.parent = parent

  let markerExpr = this.io.readU1()
  this.marker = markerExpr
  let bodyExpr = this.io.readU4le()
  this.body = bodyExpr

proc fromFile*(_: typedesc[RepeatUntilSized_Record], filename: string): RepeatUntilSized_Record =
  RepeatUntilSized_Record.read(newKaitaiFileStream(filename), nil, nil)

