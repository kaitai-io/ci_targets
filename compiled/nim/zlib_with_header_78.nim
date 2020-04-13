import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ZlibWithHeader78* = ref object of KaitaiStruct
    data*: string
    parent*: KaitaiStruct
    rawData*: string

proc read*(_: typedesc[ZlibWithHeader78], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ZlibWithHeader78


proc read*(_: typedesc[ZlibWithHeader78], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ZlibWithHeader78 =
  template this: untyped = result
  this = new(ZlibWithHeader78)
  let root = if root == nil: cast[ZlibWithHeader78](this) else: cast[ZlibWithHeader78](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.rawData = this.io.readBytesFull()
  this.data = this.rawData.processZlib()

proc fromFile*(_: typedesc[ZlibWithHeader78], filename: string): ZlibWithHeader78 =
  ZlibWithHeader78.read(newKaitaiFileStream(filename), nil, nil)

