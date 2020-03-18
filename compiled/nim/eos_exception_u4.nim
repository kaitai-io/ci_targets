import kaitai_struct_nim_runtime



type
  Data* = ref DataObj
  DataObj* = object
    io: KaitaiStream
    root*: EosExceptionU4
    parent*: EosExceptionU4
    prebuf*: string
    failInt*: uint32
  EosExceptionU4* = ref EosExceptionU4Obj
  EosExceptionU4Obj* = object
    io: KaitaiStream
    root*: EosExceptionU4
    parent*: ref RootObj
    envelope*: Data

# Data
proc read*(_: typedesc[Data], io: KaitaiStream, root: EosExceptionU4, parent: EosExceptionU4): owned Data =
  result = new(Data)
  let root = if root == nil: cast[EosExceptionU4](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let prebuf = readBytes(io, int(3))
  result.prebuf = prebuf
  let failInt = readU4le(io)
  result.failInt = failInt


proc fromFile*(_: typedesc[Data], filename: string): owned Data =
  Data.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DataObj) =
  close(x.io)

# EosExceptionU4
proc read*(_: typedesc[EosExceptionU4], io: KaitaiStream, root: EosExceptionU4, parent: ref RootObj): owned EosExceptionU4 =
  result = new(EosExceptionU4)
  let root = if root == nil: cast[EosExceptionU4](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let envelope = readBytes(io, int(6))
  result.envelope = envelope


proc fromFile*(_: typedesc[EosExceptionU4], filename: string): owned EosExceptionU4 =
  EosExceptionU4.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EosExceptionU4Obj) =
  close(x.io)

