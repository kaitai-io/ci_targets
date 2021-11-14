import kaitai_struct_nim_runtime
import options

type
  ProcessCoerceUsertype2* = ref object of KaitaiStruct
    `records`*: seq[ProcessCoerceUsertype2_Record]
    `parent`*: KaitaiStruct
  ProcessCoerceUsertype2_Record* = ref object of KaitaiStruct
    `flag`*: uint8
    `bufUnproc`*: ProcessCoerceUsertype2_Foo
    `bufProc`*: ProcessCoerceUsertype2_Foo
    `parent`*: ProcessCoerceUsertype2
    `rawBufProc`*: seq[byte]
    `rawRawBufProc`*: seq[byte]
    `bufInst`: ProcessCoerceUsertype2_Foo
    `bufInstFlag`: bool
  ProcessCoerceUsertype2_Foo* = ref object of KaitaiStruct
    `value`*: uint32
    `parent`*: ProcessCoerceUsertype2_Record

proc read*(_: typedesc[ProcessCoerceUsertype2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceUsertype2
proc read*(_: typedesc[ProcessCoerceUsertype2_Record], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype2): ProcessCoerceUsertype2_Record
proc read*(_: typedesc[ProcessCoerceUsertype2_Foo], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype2_Record): ProcessCoerceUsertype2_Foo

proc buf*(this: ProcessCoerceUsertype2_Record): ProcessCoerceUsertype2_Foo

proc read*(_: typedesc[ProcessCoerceUsertype2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceUsertype2 =
  template this: untyped = result
  this = new(ProcessCoerceUsertype2)
  let root = if root == nil: cast[ProcessCoerceUsertype2](this) else: cast[ProcessCoerceUsertype2](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(2):
    let it = ProcessCoerceUsertype2_Record.read(this.io, this.root, this)
    this.records.add(it)

proc fromFile*(_: typedesc[ProcessCoerceUsertype2], filename: string): ProcessCoerceUsertype2 =
  ProcessCoerceUsertype2.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessCoerceUsertype2_Record], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype2): ProcessCoerceUsertype2_Record =
  template this: untyped = result
  this = new(ProcessCoerceUsertype2_Record)
  let root = if root == nil: cast[ProcessCoerceUsertype2](this) else: cast[ProcessCoerceUsertype2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let flagExpr = this.io.readU1()
  this.flag = flagExpr
  if this.flag == 0:
    let bufUnprocExpr = ProcessCoerceUsertype2_Foo.read(this.io, this.root, this)
    this.bufUnproc = bufUnprocExpr
  if this.flag != 0:
    let rawRawBufProcExpr = this.io.readBytes(int(4))
    this.rawRawBufProc = rawRawBufProcExpr
    let rawBufProcExpr = this.rawRawBufProc.processXor(170)
    this.rawBufProc = rawBufProcExpr
    let rawBufProcIo = newKaitaiStream(rawBufProcExpr)
    let bufProcExpr = ProcessCoerceUsertype2_Foo.read(rawBufProcIo, this.root, this)
    this.bufProc = bufProcExpr

proc buf(this: ProcessCoerceUsertype2_Record): ProcessCoerceUsertype2_Foo = 
  if this.bufInstFlag:
    return this.bufInst
  let bufInstExpr = ProcessCoerceUsertype2_Foo((if this.flag == 0: this.bufUnproc else: this.bufProc))
  this.bufInst = bufInstExpr
  this.bufInstFlag = true
  return this.bufInst

proc fromFile*(_: typedesc[ProcessCoerceUsertype2_Record], filename: string): ProcessCoerceUsertype2_Record =
  ProcessCoerceUsertype2_Record.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessCoerceUsertype2_Foo], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceUsertype2_Record): ProcessCoerceUsertype2_Foo =
  template this: untyped = result
  this = new(ProcessCoerceUsertype2_Foo)
  let root = if root == nil: cast[ProcessCoerceUsertype2](this) else: cast[ProcessCoerceUsertype2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readU4le()
  this.value = valueExpr

proc fromFile*(_: typedesc[ProcessCoerceUsertype2_Foo], filename: string): ProcessCoerceUsertype2_Foo =
  ProcessCoerceUsertype2_Foo.read(newKaitaiFileStream(filename), nil, nil)

