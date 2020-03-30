import kaitai_struct_nim_runtime
import options

type
  ProcessCoerceBytes_Record* = ref ProcessCoerceBytes_RecordObj
  ProcessCoerceBytes_RecordObj* = object
    flag*: uint8
    bufUnproc*: string
    bufProc*: string
    io*: KaitaiStream
    root*: ProcessCoerceBytes
    parent*: ProcessCoerceBytes
    rawBufProc*: string
    bufInst*: Option[string]
  ProcessCoerceBytes* = ref ProcessCoerceBytesObj
  ProcessCoerceBytesObj* = object
    records*: seq[ProcessCoerceBytes_Record]
    io*: KaitaiStream
    root*: ProcessCoerceBytes
    parent*: ref RootObj

### ProcessCoerceBytes_Record ###
proc buf*(this: ProcessCoerceBytes_Record): string
proc buf(this: ProcessCoerceBytes_Record): string = 
  if isSome(this.bufInst):
    return get(this.bufInst)
  let bufInst = (if this.flag == 0: this.bufUnproc else: this.bufProc)
  this.bufInst = some(bufInst)
  return get(this.bufInst)

proc read*(_: typedesc[ProcessCoerceBytes_Record], io: KaitaiStream, root: ProcessCoerceBytes, parent: ProcessCoerceBytes): ProcessCoerceBytes_Record =
  let this = new(ProcessCoerceBytes_Record)
  let root = if root == nil: cast[ProcessCoerceBytes](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let flag = this.io.readU1()
  this.flag = flag
  if this.flag == 0:
    let bufUnproc = this.io.readBytes(int(4))
    this.bufUnproc = bufUnproc
  if this.flag != 0:
    let rawBufProc = this.io.readBytes(int(4))
    this.rawBufProc = rawBufProc
    let bufProc = rawBufProc.processXor(170)
    this.bufProc = bufProc
  result = this

proc fromFile*(_: typedesc[ProcessCoerceBytes_Record], filename: string): ProcessCoerceBytes_Record =
  ProcessCoerceBytes_Record.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCoerceBytes_RecordObj) =
  close(x.io)

### ProcessCoerceBytes ###
proc read*(_: typedesc[ProcessCoerceBytes], io: KaitaiStream, root: ProcessCoerceBytes, parent: ref RootObj): ProcessCoerceBytes =
  let this = new(ProcessCoerceBytes)
  let root = if root == nil: cast[ProcessCoerceBytes](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  records = newSeq[ProcessCoerceBytes_Record](2)
  for i in 0 ..< 2:
    this.records.add(ProcessCoerceBytes_Record.read(this.io, this.root, this))
  result = this

proc fromFile*(_: typedesc[ProcessCoerceBytes], filename: string): ProcessCoerceBytes =
  ProcessCoerceBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCoerceBytesObj) =
  close(x.io)

