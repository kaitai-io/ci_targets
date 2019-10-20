import ../../runtime/nim/kaitai



type
  Data* = ref DataObj
  DataObj* = object
    io: KaitaiStream
    root*: EosExceptionBytes
    parent*: EosExceptionBytes
    buf*: seq[byte]
  EosExceptionBytes* = ref EosExceptionBytesObj
  EosExceptionBytesObj* = object
    io: KaitaiStream
    root*: EosExceptionBytes
    parent*: ref RootObj
    envelope*: Data

# Data
proc read*(_: typedesc[Data], io: KaitaiStream, root: EosExceptionBytes, parent: EosExceptionBytes): owned Data =
  result = new(Data)
  let root = if root == nil: cast[EosExceptionBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let buf = readBytes(io, int(7))
  result.buf = buf


proc fromFile*(_: typedesc[Data], filename: string): owned Data =
  Data.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var DataObj) =
  close(x.io)

# EosExceptionBytes
proc read*(_: typedesc[EosExceptionBytes], io: KaitaiStream, root: EosExceptionBytes, parent: ref RootObj): owned EosExceptionBytes =
  result = new(EosExceptionBytes)
  let root = if root == nil: cast[EosExceptionBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let envelope = readBytes(io, int(6))
  result.envelope = envelope


proc fromFile*(_: typedesc[EosExceptionBytes], filename: string): owned EosExceptionBytes =
  EosExceptionBytes.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionBytesObj) =
  close(x.io)

