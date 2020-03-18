import kaitai_struct_nim_runtime



type
  EofExceptionU4* = ref EofExceptionU4Obj
  EofExceptionU4Obj* = object
    io: KaitaiStream
    root*: EofExceptionU4
    parent*: ref RootObj
    prebuf*: string
    failInt*: uint32

# EofExceptionU4
proc read*(_: typedesc[EofExceptionU4], io: KaitaiStream, root: EofExceptionU4, parent: ref RootObj): owned EofExceptionU4 =
  result = new(EofExceptionU4)
  let root = if root == nil: cast[EofExceptionU4](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let prebuf = readBytes(io, int(9))
  result.prebuf = prebuf
  let failInt = readU4le(io)
  result.failInt = failInt


proc fromFile*(_: typedesc[EofExceptionU4], filename: string): owned EofExceptionU4 =
  EofExceptionU4.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EofExceptionU4Obj) =
  close(x.io)

