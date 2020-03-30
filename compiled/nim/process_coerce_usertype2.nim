import kaitai_struct_nim_runtime
import options

type
  ProcessCoerceUsertype2_Record* = ref ProcessCoerceUsertype2_RecordObj
  ProcessCoerceUsertype2_RecordObj* = object
    flag*: uint8
    bufUnproc*: ProcessCoerceUsertype2_Foo
    bufProc*: ProcessCoerceUsertype2_Foo
    io*: KaitaiStream
    root*: ProcessCoerceUsertype2
    parent*: ProcessCoerceUsertype2
    rawBufProc*: string
    rawRawBufProc*: string
    bufInst*: Option[ProcessCoerceUsertype2_Foo]
  ProcessCoerceUsertype2_Foo* = ref ProcessCoerceUsertype2_FooObj
  ProcessCoerceUsertype2_FooObj* = object
    value*: uint32
    io*: KaitaiStream
    root*: ProcessCoerceUsertype2
    parent*: ProcessCoerceUsertype2_Record
  ProcessCoerceUsertype2* = ref ProcessCoerceUsertype2Obj
  ProcessCoerceUsertype2Obj* = object
    records*: seq[ProcessCoerceUsertype2_Record]
    io*: KaitaiStream
    root*: ProcessCoerceUsertype2
    parent*: ref RootObj

### ProcessCoerceUsertype2_Record ###
proc buf*(this: ProcessCoerceUsertype2_Record): ProcessCoerceUsertype2_Foo
proc buf(this: ProcessCoerceUsertype2_Record): ProcessCoerceUsertype2_Foo = 
  if isSome(this.bufInst):
    return get(this.bufInst)
  let bufInst = (if this.flag == 0: this.bufUnproc else: this.bufProc)
  this.bufInst = some(bufInst)
  return get(this.bufInst)

proc read*(_: typedesc[ProcessCoerceUsertype2_Record], io: KaitaiStream, root: ProcessCoerceUsertype2, parent: ProcessCoerceUsertype2): ProcessCoerceUsertype2_Record =
  let this = new(ProcessCoerceUsertype2_Record)
  let root = if root == nil: cast[ProcessCoerceUsertype2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let flag = this.io.readU1()
  this.flag = flag
  if this.flag == 0:
    let bufUnproc = ProcessCoerceUsertype2_Foo.read(this.io, this.root, this)
    this.bufUnproc = bufUnproc
  if this.flag != 0:
    let rawRawBufProc = this.io.readBytes(int(4))
    this.rawRawBufProc = rawRawBufProc
    let rawBufProc = rawRawBufProc.processXor(170)
    this.rawBufProc = rawBufProc
    let rawBufProcIo = newKaitaiStringStream(rawBufProc)
    let bufProc = ProcessCoerceUsertype2_Foo.read(rawBufProcIo, this.root, this)
    this.bufProc = bufProc
  result = this

proc fromFile*(_: typedesc[ProcessCoerceUsertype2_Record], filename: string): ProcessCoerceUsertype2_Record =
  ProcessCoerceUsertype2_Record.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCoerceUsertype2_RecordObj) =
  close(x.io)

### ProcessCoerceUsertype2_Foo ###
proc read*(_: typedesc[ProcessCoerceUsertype2_Foo], io: KaitaiStream, root: ProcessCoerceUsertype2, parent: ProcessCoerceUsertype2_Record): ProcessCoerceUsertype2_Foo =
  let this = new(ProcessCoerceUsertype2_Foo)
  let root = if root == nil: cast[ProcessCoerceUsertype2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let value = this.io.readU4le()
  this.value = value
  result = this

proc fromFile*(_: typedesc[ProcessCoerceUsertype2_Foo], filename: string): ProcessCoerceUsertype2_Foo =
  ProcessCoerceUsertype2_Foo.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCoerceUsertype2_FooObj) =
  close(x.io)

### ProcessCoerceUsertype2 ###
proc read*(_: typedesc[ProcessCoerceUsertype2], io: KaitaiStream, root: ProcessCoerceUsertype2, parent: ref RootObj): ProcessCoerceUsertype2 =
  let this = new(ProcessCoerceUsertype2)
  let root = if root == nil: cast[ProcessCoerceUsertype2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  records = newSeq[ProcessCoerceUsertype2_Record](2)
  for i in 0 ..< 2:
    this.records.add(ProcessCoerceUsertype2_Record.read(this.io, this.root, this))
  result = this

proc fromFile*(_: typedesc[ProcessCoerceUsertype2], filename: string): ProcessCoerceUsertype2 =
  ProcessCoerceUsertype2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCoerceUsertype2Obj) =
  close(x.io)

