import kaitai_struct_nim_runtime
import options

type
  ProcessCoerceUsertype1* = ref object of KaitaiStruct
    records*: seq[ProcessCoerceUsertype1_Record]
    parent*: KaitaiStruct
  ProcessCoerceUsertype1_Record* = ref object of KaitaiStruct
    flag*: uint8
    bufUnproc*: ProcessCoerceUsertype1_Foo
    bufProc*: ProcessCoerceUsertype1_Foo
    parent*: ProcessCoerceUsertype1
    rawBufUnproc*: string
    rawBufProc*: string
    rawRawBufProc*: string
    bufInst*: Option[ProcessCoerceUsertype1_Foo]
  ProcessCoerceUsertype1_Foo* = ref object of KaitaiStruct
    value*: uint32
    parent*: ProcessCoerceUsertype1_Record

proc buf*(this: ProcessCoerceUsertype1_Record): ProcessCoerceUsertype1_Foo
proc read*(_: typedesc[ProcessCoerceUsertype1_Record], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype1): ProcessCoerceUsertype1_Record =
  template this: untyped = result
  this = new(ProcessCoerceUsertype1_Record)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.flag = this.io.readU1()

  ##[
  ]##
  if this.flag == 0:
    this.rawBufUnproc = this.io.readBytes(int(4))
    let rawBufUnprocIo = newKaitaiStringStream(this.rawBufUnproc)
    this.bufUnproc = ProcessCoerceUsertype1_Foo.read(rawBufUnprocIo, this.root, this)

  ##[
  ]##
  if this.flag != 0:
    this.rawRawBufProc = this.io.readBytes(int(4))
    this.rawBufProc = rawRawBufProc.processXor(170)
    let rawBufProcIo = newKaitaiStringStream(this.rawBufProc)
    this.bufProc = ProcessCoerceUsertype1_Foo.read(rawBufProcIo, this.root, this)

proc buf(this: ProcessCoerceUsertype1_Record): ProcessCoerceUsertype1_Foo = 
  if isSome(this.bufInst):
    return get(this.bufInst)
  this.bufInst = some((if this.flag == 0: this.bufUnproc else: this.bufProc))
  return get(this.bufInst)

proc fromFile*(_: typedesc[ProcessCoerceUsertype1_Record], filename: string): ProcessCoerceUsertype1_Record =
  ProcessCoerceUsertype1_Record.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessCoerceUsertype1_Foo], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype1_Record): ProcessCoerceUsertype1_Foo =
  template this: untyped = result
  this = new(ProcessCoerceUsertype1_Foo)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.value = this.io.readU4le()

proc fromFile*(_: typedesc[ProcessCoerceUsertype1_Foo], filename: string): ProcessCoerceUsertype1_Foo =
  ProcessCoerceUsertype1_Foo.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessCoerceUsertype1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceUsertype1 =
  template this: untyped = result
  this = new(ProcessCoerceUsertype1)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  records = newSeq[ProcessCoerceUsertype1_Record](2)
  for i in 0 ..< 2:
    this.records.add(ProcessCoerceUsertype1_Record.read(this.io, this.root, this))

proc fromFile*(_: typedesc[ProcessCoerceUsertype1], filename: string): ProcessCoerceUsertype1 =
  ProcessCoerceUsertype1.read(newKaitaiFileStream(filename), nil, nil)

