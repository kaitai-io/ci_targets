import kaitai_struct_nim_runtime
import options

type
  EofExceptionBytes* = ref EofExceptionBytesObj
  EofExceptionBytesObj* = object
    buf*: string
    io*: KaitaiStream
    root*: EofExceptionBytes
    parent*: ref RootObj

## EofExceptionBytes
proc read*(_: typedesc[EofExceptionBytes], io: KaitaiStream, root: EofExceptionBytes, parent: ref RootObj): EofExceptionBytes =
  let this = new(EofExceptionBytes)
  let root = if root == nil: cast[EofExceptionBytes](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.buf = this.io.readBytes(int(13))
  result = this

proc fromFile*(_: typedesc[EofExceptionBytes], filename: string): EofExceptionBytes =
  EofExceptionBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EofExceptionBytesObj) =
  close(x.io)

