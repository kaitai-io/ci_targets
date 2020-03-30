import kaitai_struct_nim_runtime
import options

type
  EosExceptionU4_Data* = ref EosExceptionU4_DataObj
  EosExceptionU4_DataObj* = object
    prebuf*: string
    failInt*: uint32
    io*: KaitaiStream
    root*: EosExceptionU4
    parent*: EosExceptionU4
  EosExceptionU4* = ref EosExceptionU4Obj
  EosExceptionU4Obj* = object
    envelope*: EosExceptionU4_Data
    io*: KaitaiStream
    root*: EosExceptionU4
    parent*: ref RootObj
    rawEnvelope*: string

## EosExceptionU4_Data
proc read*(_: typedesc[EosExceptionU4_Data], io: KaitaiStream, root: EosExceptionU4, parent: EosExceptionU4): EosExceptionU4_Data =
  let this = new(EosExceptionU4_Data)
  let root = if root == nil: cast[EosExceptionU4](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.prebuf = this.io.readBytes(int(3))
  this.failInt = this.io.readU4le()
  result = this

proc fromFile*(_: typedesc[EosExceptionU4_Data], filename: string): EosExceptionU4_Data =
  EosExceptionU4_Data.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionU4_DataObj) =
  close(x.io)

## EosExceptionU4
proc read*(_: typedesc[EosExceptionU4], io: KaitaiStream, root: EosExceptionU4, parent: ref RootObj): EosExceptionU4 =
  let this = new(EosExceptionU4)
  let root = if root == nil: cast[EosExceptionU4](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.rawEnvelope = this.io.readBytes(int(6))
  let rawEnvelopeIo = newKaitaiStringStream(this.rawEnvelope)
  this.envelope = EosExceptionU4_Data.read(rawEnvelopeIo, this.root, this)
  result = this

proc fromFile*(_: typedesc[EosExceptionU4], filename: string): EosExceptionU4 =
  EosExceptionU4.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionU4Obj) =
  close(x.io)

