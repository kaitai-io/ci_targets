import kaitai_struct_nim_runtime
import options

type
  ProcessCoerceSwitch* = ref object of KaitaiStruct
    `bufType`*: uint8
    `flag`*: uint8
    `bufUnproc`*: KaitaiStruct
    `bufProc`*: KaitaiStruct
    `parent`*: KaitaiStruct
    `rawBufUnproc`*: seq[byte]
    `rawBufProc`*: seq[byte]
    `rawRawBufProc`*: seq[byte]
    `bufInst`: KaitaiStruct
    `bufInstFlag`: bool
  ProcessCoerceSwitch_Foo* = ref object of KaitaiStruct
    `bar`*: seq[byte]
    `parent`*: ProcessCoerceSwitch

proc read*(_: typedesc[ProcessCoerceSwitch], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceSwitch
proc read*(_: typedesc[ProcessCoerceSwitch_Foo], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceSwitch): ProcessCoerceSwitch_Foo

proc buf*(this: ProcessCoerceSwitch): KaitaiStruct

proc read*(_: typedesc[ProcessCoerceSwitch], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessCoerceSwitch =
  template this: untyped = result
  this = new(ProcessCoerceSwitch)
  let root = if root == nil: cast[ProcessCoerceSwitch](this) else: cast[ProcessCoerceSwitch](root)
  this.io = io
  this.root = root
  this.parent = parent

  let bufTypeExpr = this.io.readU1()
  this.bufType = bufTypeExpr
  let flagExpr = this.io.readU1()
  this.flag = flagExpr
  if this.flag == 0:
    block:
      let on = this.bufType
      if on == 0:
        let rawBufUnprocExpr = this.io.readBytes(int(4))
        this.rawBufUnproc = rawBufUnprocExpr
        let rawBufUnprocIo = newKaitaiStream(rawBufUnprocExpr)
        let bufUnprocExpr = ProcessCoerceSwitch_Foo.read(rawBufUnprocIo, this.root, this)
        this.bufUnproc = bufUnprocExpr
      else:
        let bufUnprocExpr = this.io.readBytes(int(4))
        this.bufUnproc = bufUnprocExpr
  if this.flag != 0:
    block:
      let on = this.bufType
      if on == 0:
        let rawRawBufProcExpr = this.io.readBytes(int(4))
        this.rawRawBufProc = rawRawBufProcExpr
        let rawBufProcExpr = this.rawRawBufProc.processXor(170)
        this.rawBufProc = rawBufProcExpr
        let rawBufProcIo = newKaitaiStream(rawBufProcExpr)
        let bufProcExpr = ProcessCoerceSwitch_Foo.read(rawBufProcIo, this.root, this)
        this.bufProc = bufProcExpr
      else:
        let rawBufProcExpr = this.io.readBytes(int(4))
        this.rawBufProc = rawBufProcExpr
        let bufProcExpr = this.rawBufProc.processXor(170)
        this.bufProc = bufProcExpr

proc buf(this: ProcessCoerceSwitch): KaitaiStruct = 
  if this.bufInstFlag:
    return this.bufInst
  let bufInstExpr = KaitaiStruct((if this.flag == 0: this.bufUnproc else: this.bufProc))
  this.bufInst = bufInstExpr
  this.bufInstFlag = true
  return this.bufInst

proc fromFile*(_: typedesc[ProcessCoerceSwitch], filename: string): ProcessCoerceSwitch =
  ProcessCoerceSwitch.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessCoerceSwitch_Foo], io: KaitaiStream, root: KaitaiStruct, parent: ProcessCoerceSwitch): ProcessCoerceSwitch_Foo =
  template this: untyped = result
  this = new(ProcessCoerceSwitch_Foo)
  let root = if root == nil: cast[ProcessCoerceSwitch](this) else: cast[ProcessCoerceSwitch](root)
  this.io = io
  this.root = root
  this.parent = parent

  let barExpr = this.io.readBytes(int(4))
  this.bar = barExpr

proc fromFile*(_: typedesc[ProcessCoerceSwitch_Foo], filename: string): ProcessCoerceSwitch_Foo =
  ProcessCoerceSwitch_Foo.read(newKaitaiFileStream(filename), nil, nil)

