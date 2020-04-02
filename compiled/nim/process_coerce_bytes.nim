import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessCoerceBytes* = ref object of KaitaiStruct
    records*: seq[ProcessCoerceBytes_Record]
    parent*: KaitaiStruct
  ProcessCoerceBytes_Record* = ref object of KaitaiStruct
    flag*: uint8
    bufUnproc*: string
    bufProc*: string
    parent*: ProcessCoerceBytes
    rawBufProc*: string
    bufInst*: Option[string]

proc read*(_: typedesc[ProcessCoerceBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceBytes
proc read*(_: typedesc[ProcessCoerceBytes_Record], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceBytes): ProcessCoerceBytes_Record

proc read*(_: typedesc[ProcessCoerceBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceBytes =
  template this: untyped = result
  this = new(ProcessCoerceBytes)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  records = newSeq[ProcessCoerceBytes_Record](2)
  for i in 0 ..< 2:
    this.records.add(ProcessCoerceBytes_Record.read(this.io, this.root, this))

proc fromFile*(_: typedesc[ProcessCoerceBytes], filename: string): ProcessCoerceBytes =
  ProcessCoerceBytes.read(newKaitaiFileStream(filename), nil, nil)

proc buf*(this: ProcessCoerceBytes_Record): string
proc read*(_: typedesc[ProcessCoerceBytes_Record], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceBytes): ProcessCoerceBytes_Record =
  template this: untyped = result
  this = new(ProcessCoerceBytes_Record)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.flag = this.io.readU1()
  if this.flag == 0:
    this.bufUnproc = this.io.readBytes(int(4))
  if this.flag != 0:
    this.rawBufProc = this.io.readBytes(int(4))
    this.bufProc = rawBufProc.processXor(170)

proc buf(this: ProcessCoerceBytes_Record): string = 
  if isSome(this.bufInst):
    return get(this.bufInst)
  this.bufInst = some((if this.flag == 0: this.bufUnproc else: this.bufProc))
  return get(this.bufInst)

proc fromFile*(_: typedesc[ProcessCoerceBytes_Record], filename: string): ProcessCoerceBytes_Record =
  ProcessCoerceBytes_Record.read(newKaitaiFileStream(filename), nil, nil)

