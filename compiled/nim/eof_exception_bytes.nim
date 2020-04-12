import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  EofExceptionBytes* = ref object of KaitaiStruct
    buf*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[EofExceptionBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBytes


proc read*(_: typedesc[EofExceptionBytes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionBytes =
  template this: untyped = result
  this = new(EofExceptionBytes)
  let root = if root == nil: cast[EofExceptionBytes](this) else: cast[EofExceptionBytes](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.buf = this.io.readBytes(int(13))

proc fromFile*(_: typedesc[EofExceptionBytes], filename: string): EofExceptionBytes =
  EofExceptionBytes.read(newKaitaiFileStream(filename), nil, nil)

