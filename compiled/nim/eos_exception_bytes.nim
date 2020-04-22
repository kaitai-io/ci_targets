import kaitai_struct_nim_runtime
import options

type
  EosExceptionBytes* = ref object of KaitaiStruct
    envelope*: EosExceptionBytes_Data
    parent*: KaitaiStruct
    rawEnvelope*: seq[byte]
  EosExceptionBytes_Data* = ref object of KaitaiStruct
    buf*: seq[byte]
    parent*: EosExceptionBytes

proc read*(_: typedesc[EosExceptionBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EosExceptionBytes
proc read*(_: typedesc[EosExceptionBytes_Data], io: KaitaiStream, root: KaitaiStruct, parent: EosExceptionBytes): EosExceptionBytes_Data


proc read*(_: typedesc[EosExceptionBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EosExceptionBytes =
  template this: untyped = result
  this = new(EosExceptionBytes)
  let root = if root == nil: cast[EosExceptionBytes](this) else: cast[EosExceptionBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawEnvelopeExpr = this.io.readBytes(int(6))
  this.rawEnvelope = rawEnvelopeExpr
  let rawEnvelopeIo = newKaitaiStream(rawEnvelopeExpr)
  let envelopeExpr = EosExceptionBytes_Data.read(rawEnvelopeIo, this.root, this)
  this.envelope = envelopeExpr

proc fromFile*(_: typedesc[EosExceptionBytes], filename: string): EosExceptionBytes =
  EosExceptionBytes.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EosExceptionBytes_Data], io: KaitaiStream, root: KaitaiStruct, parent: EosExceptionBytes): EosExceptionBytes_Data =
  template this: untyped = result
  this = new(EosExceptionBytes_Data)
  let root = if root == nil: cast[EosExceptionBytes](this) else: cast[EosExceptionBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let bufExpr = this.io.readBytes(int(7))
  this.buf = bufExpr

proc fromFile*(_: typedesc[EosExceptionBytes_Data], filename: string): EosExceptionBytes_Data =
  EosExceptionBytes_Data.read(newKaitaiFileStream(filename), nil, nil)

