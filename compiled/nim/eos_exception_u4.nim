import kaitai_struct_nim_runtime

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

### EosExceptionU4_Data ###
proc read*(_: typedesc[EosExceptionU4_Data], io: KaitaiStream, root: EosExceptionU4, parent: EosExceptionU4): EosExceptionU4_Data =
  result = new(EosExceptionU4_Data)
  let root = if root == nil: cast[EosExceptionU4](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let prebuf = io.readBytes(int(3))
  result.prebuf = prebuf
  let failInt = io.readU4le()
  result.failInt = failInt

proc fromFile*(_: typedesc[EosExceptionU4_Data], filename: string): EosExceptionU4_Data =
  EosExceptionU4_Data.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionU4_DataObj) =
  close(x.io)

### EosExceptionU4 ###
proc read*(_: typedesc[EosExceptionU4], io: KaitaiStream, root: EosExceptionU4, parent: ref RootObj): EosExceptionU4 =
  result = new(EosExceptionU4)
  let root = if root == nil: cast[EosExceptionU4](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let rawEnvelope = io.readBytes(int(6))
  result.rawEnvelope = rawEnvelope
  let rawEnvelopeIo = newKaitaiStringStream(rawEnvelope)
  let envelope = EosExceptionU4_Data.read(rawEnvelopeIo, result, root)
  result.envelope = envelope

proc fromFile*(_: typedesc[EosExceptionU4], filename: string): EosExceptionU4 =
  EosExceptionU4.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionU4Obj) =
  close(x.io)

