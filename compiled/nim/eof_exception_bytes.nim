import kaitai_struct_nim_runtime

type
  EofExceptionBytes* = ref EofExceptionBytesObj
  EofExceptionBytesObj* = object
    buf*: string
    io*: KaitaiStream
    root*: EofExceptionBytes
    parent*: ref RootObj

### EofExceptionBytes ###
proc read*(_: typedesc[EofExceptionBytes], io: KaitaiStream, root: EofExceptionBytes, parent: ref RootObj): EofExceptionBytes =
  result = new(EofExceptionBytes)
  let root = if root == nil: cast[EofExceptionBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let buf = io.readBytes(int(13))
  result.buf = buf

proc fromFile*(_: typedesc[EofExceptionBytes], filename: string): EofExceptionBytes =
  EofExceptionBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EofExceptionBytesObj) =
  close(x.io)

