import kaitai_struct_nim_runtime
import options

type
  ProcessCoerceUsertype1_Record* = ref ProcessCoerceUsertype1_RecordObj
  ProcessCoerceUsertype1_RecordObj* = object
    flag*: uint8
    bufUnproc*: ProcessCoerceUsertype1_Foo
    bufProc*: ProcessCoerceUsertype1_Foo
    io*: KaitaiStream
    root*: ProcessCoerceUsertype1
    parent*: ProcessCoerceUsertype1
    rawBufUnproc*: string
    rawBufProc*: string
    rawRawBufProc*: string
    bufInst*: Option[ProcessCoerceUsertype1_Foo]
  ProcessCoerceUsertype1_Foo* = ref ProcessCoerceUsertype1_FooObj
  ProcessCoerceUsertype1_FooObj* = object
    value*: uint32
    io*: KaitaiStream
    root*: ProcessCoerceUsertype1
    parent*: ProcessCoerceUsertype1_Record
  ProcessCoerceUsertype1* = ref ProcessCoerceUsertype1Obj
  ProcessCoerceUsertype1Obj* = object
    records*: seq[ProcessCoerceUsertype1_Record]
    io*: KaitaiStream
    root*: ProcessCoerceUsertype1
    parent*: ref RootObj

### ProcessCoerceUsertype1_Record ###
proc buf*(this: ProcessCoerceUsertype1_Record): ProcessCoerceUsertype1_Foo
proc buf(this: ProcessCoerceUsertype1_Record): ProcessCoerceUsertype1_Foo = 
  if isSome(this.bufInst):
    return get(this.bufInst)
  let bufInst = (if this.flag == 0: this.bufUnproc else: this.bufProc)
  this.bufInst = some(bufInst)
  return get(this.bufInst)

proc read*(_: typedesc[ProcessCoerceUsertype1_Record], io: KaitaiStream, root: ProcessCoerceUsertype1, parent: ProcessCoerceUsertype1): ProcessCoerceUsertype1_Record =
  let this = new(ProcessCoerceUsertype1_Record)
  let root = if root == nil: cast[ProcessCoerceUsertype1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let flag = this.io.readU1()
  this.flag = flag
  if this.flag == 0:
    let rawBufUnproc = this.io.readBytes(int(4))
    this.rawBufUnproc = rawBufUnproc
    let rawBufUnprocIo = newKaitaiStringStream(rawBufUnproc)
    let bufUnproc = ProcessCoerceUsertype1_Foo.read(rawBufUnprocIo, this.root, this)
    this.bufUnproc = bufUnproc
  if this.flag != 0:
    let rawRawBufProc = this.io.readBytes(int(4))
    this.rawRawBufProc = rawRawBufProc
    let rawBufProc = rawRawBufProc.processXor(170)
    this.rawBufProc = rawBufProc
    let rawBufProcIo = newKaitaiStringStream(rawBufProc)
    let bufProc = ProcessCoerceUsertype1_Foo.read(rawBufProcIo, this.root, this)
    this.bufProc = bufProc
  result = this

proc fromFile*(_: typedesc[ProcessCoerceUsertype1_Record], filename: string): ProcessCoerceUsertype1_Record =
  ProcessCoerceUsertype1_Record.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCoerceUsertype1_RecordObj) =
  close(x.io)

### ProcessCoerceUsertype1_Foo ###
proc read*(_: typedesc[ProcessCoerceUsertype1_Foo], io: KaitaiStream, root: ProcessCoerceUsertype1, parent: ProcessCoerceUsertype1_Record): ProcessCoerceUsertype1_Foo =
  let this = new(ProcessCoerceUsertype1_Foo)
  let root = if root == nil: cast[ProcessCoerceUsertype1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let value = this.io.readU4le()
  this.value = value
  result = this

proc fromFile*(_: typedesc[ProcessCoerceUsertype1_Foo], filename: string): ProcessCoerceUsertype1_Foo =
  ProcessCoerceUsertype1_Foo.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCoerceUsertype1_FooObj) =
  close(x.io)

### ProcessCoerceUsertype1 ###
proc read*(_: typedesc[ProcessCoerceUsertype1], io: KaitaiStream, root: ProcessCoerceUsertype1, parent: ref RootObj): ProcessCoerceUsertype1 =
  let this = new(ProcessCoerceUsertype1)
  let root = if root == nil: cast[ProcessCoerceUsertype1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  records = newSeq[ProcessCoerceUsertype1_Record](2)
  for i in 0 ..< 2:
    this.records.add(ProcessCoerceUsertype1_Record.read(this.io, this.root, this))
  result = this

proc fromFile*(_: typedesc[ProcessCoerceUsertype1], filename: string): ProcessCoerceUsertype1 =
  ProcessCoerceUsertype1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCoerceUsertype1Obj) =
  close(x.io)

