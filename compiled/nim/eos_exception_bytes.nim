import kaitai_struct_nim_runtime
import options

type
  EosExceptionBytes* = ref object of KaitaiStruct
    envelope*: EosExceptionBytes_Data
    parent*: KaitaiStruct
    rawEnvelope*: string
  EosExceptionBytes_Data* = ref object of KaitaiStruct
    buf*: string
    parent*: EosExceptionBytes

proc read*(_: typedesc[EosExceptionBytes_Data], io: KaitaiStream, root: KaitaiStruct, parent: EosExceptionBytes): EosExceptionBytes_Data =
  template this: untyped = result
  this = new(EosExceptionBytes_Data)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.buf = this.io.readBytes(int(7))

proc fromFile*(_: typedesc[EosExceptionBytes_Data], filename: string): EosExceptionBytes_Data =
  EosExceptionBytes_Data.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EosExceptionBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EosExceptionBytes =
  template this: untyped = result
  this = new(EosExceptionBytes)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.rawEnvelope = this.io.readBytes(int(6))
  let rawEnvelopeIo = newKaitaiStringStream(this.rawEnvelope)
  this.envelope = EosExceptionBytes_Data.read(rawEnvelopeIo, this.root, this)

proc fromFile*(_: typedesc[EosExceptionBytes], filename: string): EosExceptionBytes =
  EosExceptionBytes.read(newKaitaiFileStream(filename), nil, nil)

