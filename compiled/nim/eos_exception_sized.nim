import kaitai_struct_nim_runtime
import options

type
  EosExceptionSized* = ref object of KaitaiStruct
    `envelope`*: EosExceptionSized_Data
    `parent`*: KaitaiStruct
    `rawEnvelope`*: seq[byte]
  EosExceptionSized_Data* = ref object of KaitaiStruct
    `buf`*: EosExceptionSized_Foo
    `parent`*: EosExceptionSized
    `rawBuf`*: seq[byte]
  EosExceptionSized_Foo* = ref object of KaitaiStruct
    `parent`*: EosExceptionSized_Data

proc read*(_: typedesc[EosExceptionSized], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EosExceptionSized
proc read*(_: typedesc[EosExceptionSized_Data], io: KaitaiStream, root: KaitaiStruct, parent: EosExceptionSized): EosExceptionSized_Data
proc read*(_: typedesc[EosExceptionSized_Foo], io: KaitaiStream, root: KaitaiStruct, parent: EosExceptionSized_Data): EosExceptionSized_Foo


proc read*(_: typedesc[EosExceptionSized], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EosExceptionSized =
  template this: untyped = result
  this = new(EosExceptionSized)
  let root = if root == nil: cast[EosExceptionSized](this) else: cast[EosExceptionSized](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawEnvelopeExpr = this.io.readBytes(int(6))
  this.rawEnvelope = rawEnvelopeExpr
  let rawEnvelopeIo = newKaitaiStream(rawEnvelopeExpr)
  let envelopeExpr = EosExceptionSized_Data.read(rawEnvelopeIo, this.root, this)
  this.envelope = envelopeExpr

proc fromFile*(_: typedesc[EosExceptionSized], filename: string): EosExceptionSized =
  EosExceptionSized.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EosExceptionSized_Data], io: KaitaiStream, root: KaitaiStruct, parent: EosExceptionSized): EosExceptionSized_Data =
  template this: untyped = result
  this = new(EosExceptionSized_Data)
  let root = if root == nil: cast[EosExceptionSized](this) else: cast[EosExceptionSized](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawBufExpr = this.io.readBytes(int(7))
  this.rawBuf = rawBufExpr
  let rawBufIo = newKaitaiStream(rawBufExpr)
  let bufExpr = EosExceptionSized_Foo.read(rawBufIo, this.root, this)
  this.buf = bufExpr

proc fromFile*(_: typedesc[EosExceptionSized_Data], filename: string): EosExceptionSized_Data =
  EosExceptionSized_Data.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EosExceptionSized_Foo], io: KaitaiStream, root: KaitaiStruct, parent: EosExceptionSized_Data): EosExceptionSized_Foo =
  template this: untyped = result
  this = new(EosExceptionSized_Foo)
  let root = if root == nil: cast[EosExceptionSized](this) else: cast[EosExceptionSized](root)
  this.io = io
  this.root = root
  this.parent = parent


proc fromFile*(_: typedesc[EosExceptionSized_Foo], filename: string): EosExceptionSized_Foo =
  EosExceptionSized_Foo.read(newKaitaiFileStream(filename), nil, nil)

