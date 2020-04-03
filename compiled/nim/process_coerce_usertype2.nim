import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessCoerceUsertype2* = ref object of KaitaiStruct
    records*: seq[ProcessCoerceUsertype2_Record]
    parent*: KaitaiStruct
  ProcessCoerceUsertype2_Record* = ref object of KaitaiStruct
    flag*: uint8
    bufUnproc*: ProcessCoerceUsertype2_Foo
    bufProc*: ProcessCoerceUsertype2_Foo
    parent*: ProcessCoerceUsertype2
    rawBufProc*: string
    rawRawBufProc*: string
    bufInst*: Option[ProcessCoerceUsertype2_Foo]
  ProcessCoerceUsertype2_Foo* = ref object of KaitaiStruct
    value*: uint32
    parent*: ProcessCoerceUsertype2_Record

proc read*(_: typedesc[ProcessCoerceUsertype2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceUsertype2
proc read*(_: typedesc[ProcessCoerceUsertype2_Record], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype2): ProcessCoerceUsertype2_Record
proc read*(_: typedesc[ProcessCoerceUsertype2_Foo], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype2_Record): ProcessCoerceUsertype2_Foo

proc buf*(this: ProcessCoerceUsertype2_Record): ProcessCoerceUsertype2_Foo

proc read*(_: typedesc[ProcessCoerceUsertype2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceUsertype2 =
  template this: untyped = result
  this = new(ProcessCoerceUsertype2)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.records = newSeqOfCap[ProcessCoerceUsertype2_Record](2)
  for i in 0 ..< 2:
    this.records.add(ProcessCoerceUsertype2_Record.read(this.io, this.root, this))

proc fromFile*(_: typedesc[ProcessCoerceUsertype2], filename: string): ProcessCoerceUsertype2 =
  ProcessCoerceUsertype2.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessCoerceUsertype2_Record], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype2): ProcessCoerceUsertype2_Record =
  template this: untyped = result
  this = new(ProcessCoerceUsertype2_Record)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.flag = this.io.readU1()
  if this.flag == 0:
    this.bufUnproc = ProcessCoerceUsertype2_Foo.read(this.io, this.root, this)
  if this.flag != 0:
    this.rawRawBufProc = this.io.readBytes(int(4))
    this.rawBufProc = rawRawBufProc.processXor(170)
    let rawBufProcIo = newKaitaiStringStream(this.rawBufProc)
    this.bufProc = ProcessCoerceUsertype2_Foo.read(rawBufProcIo, this.root, this)

proc buf(this: ProcessCoerceUsertype2_Record): ProcessCoerceUsertype2_Foo = 
  if isSome(this.bufInst):
    return get(this.bufInst)
  this.bufInst = some((if this.flag == 0: this.bufUnproc else: this.bufProc))
  return get(this.bufInst)

proc fromFile*(_: typedesc[ProcessCoerceUsertype2_Record], filename: string): ProcessCoerceUsertype2_Record =
  ProcessCoerceUsertype2_Record.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessCoerceUsertype2_Foo], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype2_Record): ProcessCoerceUsertype2_Foo =
  template this: untyped = result
  this = new(ProcessCoerceUsertype2_Foo)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = this.io.readU4le()

proc fromFile*(_: typedesc[ProcessCoerceUsertype2_Foo], filename: string): ProcessCoerceUsertype2_Foo =
  ProcessCoerceUsertype2_Foo.read(newKaitaiFileStream(filename), nil, nil)

