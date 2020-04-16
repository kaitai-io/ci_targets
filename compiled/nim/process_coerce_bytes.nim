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
    bufUnproc*: seq[byte]
    bufProc*: seq[byte]
    parent*: ProcessCoerceBytes
    rawBufProc*: seq[byte]
    bufInst*: seq[byte]

proc read*(_: typedesc[ProcessCoerceBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceBytes
proc read*(_: typedesc[ProcessCoerceBytes_Record], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceBytes): ProcessCoerceBytes_Record

proc buf*(this: ProcessCoerceBytes_Record): seq[byte]

proc read*(_: typedesc[ProcessCoerceBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceBytes =
  template this: untyped = result
  this = new(ProcessCoerceBytes)
  let root = if root == nil: cast[ProcessCoerceBytes](this) else: cast[ProcessCoerceBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(2):
    let it = ProcessCoerceBytes_Record.read(this.io, this.root, this)
    this.records.add(it)

proc fromFile*(_: typedesc[ProcessCoerceBytes], filename: string): ProcessCoerceBytes =
  ProcessCoerceBytes.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessCoerceBytes_Record], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceBytes): ProcessCoerceBytes_Record =
  template this: untyped = result
  this = new(ProcessCoerceBytes_Record)
  let root = if root == nil: cast[ProcessCoerceBytes](this) else: cast[ProcessCoerceBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let flagExpr = this.io.readU1()
  this.flag = flagExpr
  if this.flag == 0:
    let bufUnprocExpr = this.io.readBytes(int(4))
    this.bufUnproc = bufUnprocExpr
  if this.flag != 0:
    let rawBufProcExpr = this.io.readBytes(int(4))
    this.rawBufProc = rawBufProcExpr
    let bufProcExpr = this.rawBufProc.processXor(170)
    this.bufProc = bufProcExpr

proc buf(this: ProcessCoerceBytes_Record): seq[byte] = 
  if this.bufInst.len != 0:
    return this.bufInst
  let bufInstExpr = seq[byte]((if this.flag == 0: this.bufUnproc else: this.bufProc))
  this.bufInst = bufInstExpr
  if this.bufInst.len != 0:
    return this.bufInst

proc fromFile*(_: typedesc[ProcessCoerceBytes_Record], filename: string): ProcessCoerceBytes_Record =
  ProcessCoerceBytes_Record.read(newKaitaiFileStream(filename), nil, nil)

