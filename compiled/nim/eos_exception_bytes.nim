import kaitai_struct_nim_runtime

type
  EosExceptionBytesdata* = ref EosExceptionBytesdataObj
  EosExceptionBytesdataObj* = object
    envelope*: Data
    io*: KaitaiStream
    root*: EosExceptionBytes
    parent*: ref RootObj
    rawEnvelope*: string
  EosExceptionBytes* = ref EosExceptionBytesObj
  EosExceptionBytesObj* = object
    envelope*: Data
    io*: KaitaiStream
    root*: EosExceptionBytes
    parent*: ref RootObj
    rawEnvelope*: string

### EosExceptionBytesdata ###
proc read*(_: typedesc[EosExceptionBytesdata], io: KaitaiStream, root: EosExceptionBytes, parent: EosExceptionBytes): EosExceptionBytesdata =
  result = new(EosExceptionBytesdata)
  let root = if root == nil: cast[EosExceptionBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.buf = result.io.readBytes(7)

proc fromFile*(_: typedesc[EosExceptionBytesdata], filename: string): EosExceptionBytesdata =
  EosExceptionBytesdata.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionBytesdataObj) =
  close(x.io)

### EosExceptionBytes ###
proc read*(_: typedesc[EosExceptionBytes], io: KaitaiStream, root: EosExceptionBytes, parent: ref RootObj): EosExceptionBytes =
  result = new(EosExceptionBytes)
  let root = if root == nil: cast[EosExceptionBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rawEnvelope = result.io.readBytes(6)
  rawEnvelopeIo = newKaitaiStringStream(rawEnvelope)
  result.envelope = Data.read(rawEnvelopeIo, result, root)

proc fromFile*(_: typedesc[EosExceptionBytes], filename: string): EosExceptionBytes =
  EosExceptionBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionBytesObj) =
  close(x.io)

