import kaitai_struct_nim_runtime
import options

type
  EofExceptionBytes* = ref object of KaitaiStruct
    buf*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[EofExceptionBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBytes =
  template this: untyped = result
  this = new(EofExceptionBytes)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.buf = this.io.readBytes(int(13))

proc fromFile*(_: typedesc[EofExceptionBytes], filename: string): EofExceptionBytes =
  EofExceptionBytes.read(newKaitaiFileStream(filename), nil, nil)

