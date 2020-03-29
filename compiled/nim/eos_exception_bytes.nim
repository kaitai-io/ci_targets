import kaitai_struct_nim_runtime

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
  result = new(EosExceptionBytes_Data)
  let root = if root == nil: cast[EosExceptionBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let buf = io.readBytes(int(7))
  result.buf = buf

proc fromFile*(_: typedesc[EosExceptionBytes_Data], filename: string): EosExceptionBytes_Data =
  EosExceptionBytes_Data.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionBytes_DataObj) =
  close(x.io)

### EosExceptionBytes ###
proc read*(_: typedesc[EosExceptionBytes], io: KaitaiStream, root: EosExceptionBytes, parent: ref RootObj): EosExceptionBytes =
  result = new(EosExceptionBytes)
  let root = if root == nil: cast[EosExceptionBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let rawEnvelope = io.readBytes(int(6))
  result.rawEnvelope = rawEnvelope
  let rawEnvelopeIo = newKaitaiStringStream(rawEnvelope)
  let envelope = EosExceptionBytes_Data.read(rawEnvelopeIo, result, root)
  result.envelope = envelope

proc fromFile*(_: typedesc[EosExceptionBytes], filename: string): EosExceptionBytes =
  EosExceptionBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionBytesObj) =
  close(x.io)

