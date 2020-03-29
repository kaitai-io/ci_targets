import kaitai_struct_nim_runtime

type
  EofExceptionU4* = ref EofExceptionU4Obj
  EofExceptionU4Obj* = object
    prebuf*: string
    failInt*: uint32
    io*: KaitaiStream
    root*: EofExceptionU4
    parent*: ref RootObj

### EofExceptionU4 ###
proc read*(_: typedesc[EofExceptionU4], io: KaitaiStream, root: EofExceptionU4, parent: ref RootObj): EofExceptionU4 =
  result = new(EofExceptionU4)
  let root = if root == nil: cast[EofExceptionU4](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let prebuf = io.readBytes(int(9))
  result.prebuf = prebuf
  let failInt = io.readU4le()
  result.failInt = failInt

proc fromFile*(_: typedesc[EofExceptionU4], filename: string): EofExceptionU4 =
  EofExceptionU4.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EofExceptionU4Obj) =
  close(x.io)

