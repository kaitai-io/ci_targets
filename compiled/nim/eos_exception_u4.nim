import kaitai_struct_nim_runtime

type
  EosExceptionU4data* = ref EosExceptionU4dataObj
  EosExceptionU4dataObj* = object
    envelope*: Data
    io*: KaitaiStream
    root*: EosExceptionU4
    parent*: ref RootObj
    rawEnvelope*: string
  EosExceptionU4* = ref EosExceptionU4Obj
  EosExceptionU4Obj* = object
    envelope*: Data
    io*: KaitaiStream
    root*: EosExceptionU4
    parent*: ref RootObj
    rawEnvelope*: string

### EosExceptionU4data ###
proc read*(_: typedesc[EosExceptionU4data], io: KaitaiStream, root: EosExceptionU4, parent: EosExceptionU4): EosExceptionU4data =
  result = new(EosExceptionU4data)
  let root = if root == nil: cast[EosExceptionU4](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.prebuf = result.io.readBytes(3)
  result.failInt = result.io.readU4le()

proc fromFile*(_: typedesc[EosExceptionU4data], filename: string): EosExceptionU4data =
  EosExceptionU4data.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionU4dataObj) =
  close(x.io)

### EosExceptionU4 ###
proc read*(_: typedesc[EosExceptionU4], io: KaitaiStream, root: EosExceptionU4, parent: ref RootObj): EosExceptionU4 =
  result = new(EosExceptionU4)
  let root = if root == nil: cast[EosExceptionU4](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rawEnvelope = result.io.readBytes(6)
  rawEnvelopeIo = newKaitaiStringStream(rawEnvelope)
  result.envelope = Data.read(rawEnvelopeIo, result, root)

proc fromFile*(_: typedesc[EosExceptionU4], filename: string): EosExceptionU4 =
  EosExceptionU4.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionU4Obj) =
  close(x.io)

