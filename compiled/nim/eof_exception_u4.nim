import ../../runtime/nim/kaitai



type
  EofExceptionU4* = ref EofExceptionU4Obj
  EofExceptionU4Obj* = object
    io: KaitaiStream
    root*: EofExceptionU4
    parent*: ref RootObj
    prebuf*: seq[byte]
    failInt*: uint32

# EofExceptionU4
proc read*(_: typedesc[EofExceptionU4], io: KaitaiStream, root: EofExceptionU4, parent: ref RootObj): owned EofExceptionU4 =
  result = new(EofExceptionU4)
  let root = if root == nil: cast[EofExceptionU4](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.prebuf = readBytes(io, int(9))
  result.failInt = readU4le(io)

proc fromFile*(_: typedesc[EofExceptionU4], filename: string): owned EofExceptionU4 =
  EofExceptionU4.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var EofExceptionU4Obj) =
  close(x.io)

