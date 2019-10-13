import ../../runtime/nim/kaitai



type
  EofExceptionBytes* = ref EofExceptionBytesObj
  EofExceptionBytesObj* = object
    io: KaitaiStream
    root*: EofExceptionBytes
    parent*: ref RootObj
    buf*: seq[byte]

# EofExceptionBytes
proc read*(_: typedesc[EofExceptionBytes], io: KaitaiStream, root: EofExceptionBytes, parent: ref RootObj): owned EofExceptionBytes =
  result = new(EofExceptionBytes)
  let root = if root == nil: cast[EofExceptionBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let buf = readBytes(io, int(13))
  result.buf = buf


proc fromFile*(_: typedesc[EofExceptionBytes], filename: string): owned EofExceptionBytes =
  EofExceptionBytes.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var EofExceptionBytesObj) =
  close(x.io)

