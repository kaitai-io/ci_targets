import kaitai_struct_nim_runtime
import options

type
  ProcessCoerceUsertype1* = ref object of KaitaiStruct
    `records`*: seq[ProcessCoerceUsertype1_Record]
    `parent`*: KaitaiStruct
  ProcessCoerceUsertype1_Foo* = ref object of KaitaiStruct
    `value`*: uint32
    `parent`*: ProcessCoerceUsertype1_Record
  ProcessCoerceUsertype1_Record* = ref object of KaitaiStruct
    `flag`*: uint8
    `bufUnproc`*: ProcessCoerceUsertype1_Foo
    `bufProc`*: ProcessCoerceUsertype1_Foo
    `parent`*: ProcessCoerceUsertype1
    `rawBufUnproc`*: seq[byte]
    `rawBufProc`*: seq[byte]
    `rawRawBufProc`*: seq[byte]
    `bufInst`: ProcessCoerceUsertype1_Foo
    `bufInstFlag`: bool

proc read*(_: typedesc[ProcessCoerceUsertype1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceUsertype1
proc read*(_: typedesc[ProcessCoerceUsertype1_Foo], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype1_Record): ProcessCoerceUsertype1_Foo
proc read*(_: typedesc[ProcessCoerceUsertype1_Record], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype1): ProcessCoerceUsertype1_Record

proc buf*(this: ProcessCoerceUsertype1_Record): ProcessCoerceUsertype1_Foo

proc read*(_: typedesc[ProcessCoerceUsertype1], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceUsertype1 =
  template this: untyped = result
  this = new(ProcessCoerceUsertype1)
  let root = if root == nil: cast[ProcessCoerceUsertype1](this) else: cast[ProcessCoerceUsertype1](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(2):
    let it = ProcessCoerceUsertype1_Record.read(this.io, this.root, this)
    this.records.add(it)

proc fromFile*(_: typedesc[ProcessCoerceUsertype1], filename: string): ProcessCoerceUsertype1 =
  ProcessCoerceUsertype1.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessCoerceUsertype1_Foo], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype1_Record): ProcessCoerceUsertype1_Foo =
  template this: untyped = result
  this = new(ProcessCoerceUsertype1_Foo)
  let root = if root == nil: cast[ProcessCoerceUsertype1](this) else: cast[ProcessCoerceUsertype1](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readU4le()
  this.value = valueExpr

proc fromFile*(_: typedesc[ProcessCoerceUsertype1_Foo], filename: string): ProcessCoerceUsertype1_Foo =
  ProcessCoerceUsertype1_Foo.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessCoerceUsertype1_Record], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype1): ProcessCoerceUsertype1_Record =
  template this: untyped = result
  this = new(ProcessCoerceUsertype1_Record)
  let root = if root == nil: cast[ProcessCoerceUsertype1](this) else: cast[ProcessCoerceUsertype1](root)
  this.io = io
  this.root = root
  this.parent = parent

  let flagExpr = this.io.readU1()
  this.flag = flagExpr
  if this.flag == 0:
    let rawBufUnprocExpr = this.io.readBytes(int(4))
    this.rawBufUnproc = rawBufUnprocExpr
    let rawBufUnprocIo = newKaitaiStream(rawBufUnprocExpr)
    let bufUnprocExpr = ProcessCoerceUsertype1_Foo.read(rawBufUnprocIo, this.root, this)
    this.bufUnproc = bufUnprocExpr
  if this.flag != 0:
    let rawRawBufProcExpr = this.io.readBytes(int(4))
    this.rawRawBufProc = rawRawBufProcExpr
    let rawBufProcExpr = this.rawRawBufProc.processXor(170)
    this.rawBufProc = rawBufProcExpr
    let rawBufProcIo = newKaitaiStream(rawBufProcExpr)
    let bufProcExpr = ProcessCoerceUsertype1_Foo.read(rawBufProcIo, this.root, this)
    this.bufProc = bufProcExpr

proc buf(this: ProcessCoerceUsertype1_Record): ProcessCoerceUsertype1_Foo = 
  if this.bufInstFlag:
    return this.bufInst
  let bufInstExpr = ProcessCoerceUsertype1_Foo((if this.flag == 0: this.bufUnproc else: this.bufProc))
  this.bufInst = bufInstExpr
  this.bufInstFlag = true
  return this.bufInst

proc fromFile*(_: typedesc[ProcessCoerceUsertype1_Record], filename: string): ProcessCoerceUsertype1_Record =
  ProcessCoerceUsertype1_Record.read(newKaitaiFileStream(filename), nil, nil)

