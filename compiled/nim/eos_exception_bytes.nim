import kaitai_struct_nim_runtime
import options

type
  EosExceptionBytes_Data* = ref EosExceptionBytes_DataObj
  EosExceptionBytes_DataObj* = object
    buf*: string
    io*: KaitaiStream
    root*: EosExceptionBytes
    parent*: EosExceptionBytes
  EosExceptionBytes* = ref EosExceptionBytesObj
  EosExceptionBytesObj* = object
    envelope*: EosExceptionBytes_Data
    io*: KaitaiStream
    root*: EosExceptionBytes
    parent*: ref RootObj
    rawEnvelope*: string

### EosExceptionBytes_Data ###
proc read*(_: typedesc[EosExceptionBytes_Data], io: KaitaiStream, root: EosExceptionBytes, parent: EosExceptionBytes): EosExceptionBytes_Data =
  let this = new(EosExceptionBytes_Data)
  let root = if root == nil: cast[EosExceptionBytes](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let buf = this.io.readBytes(int(7))
  this.buf = buf
  result = this

proc fromFile*(_: typedesc[EosExceptionBytes_Data], filename: string): EosExceptionBytes_Data =
  EosExceptionBytes_Data.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionBytes_DataObj) =
  close(x.io)

### EosExceptionBytes ###
proc read*(_: typedesc[EosExceptionBytes], io: KaitaiStream, root: EosExceptionBytes, parent: ref RootObj): EosExceptionBytes =
  let this = new(EosExceptionBytes)
  let root = if root == nil: cast[EosExceptionBytes](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let rawEnvelope = this.io.readBytes(int(6))
  this.rawEnvelope = rawEnvelope
  let rawEnvelopeIo = newKaitaiStringStream(rawEnvelope)
  let envelope = EosExceptionBytes_Data.read(rawEnvelopeIo, this.root, this)
  this.envelope = envelope
  result = this

proc fromFile*(_: typedesc[EosExceptionBytes], filename: string): EosExceptionBytes =
  EosExceptionBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionBytesObj) =
  close(x.io)

