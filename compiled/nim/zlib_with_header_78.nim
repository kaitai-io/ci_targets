import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ZlibWithHeader78* = ref object of KaitaiStruct
    data*: seq[byte]
    parent*: KaitaiStruct
    rawData*: seq[byte]

proc read*(_: typedesc[ZlibWithHeader78], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ZlibWithHeader78


proc read*(_: typedesc[ZlibWithHeader78], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ZlibWithHeader78 =
  template this: untyped = result
  this = new(ZlibWithHeader78)
  let root = if root == nil: cast[ZlibWithHeader78](this) else: cast[ZlibWithHeader78](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawDataExpr = this.io.readBytesFull()
  this.rawData = rawDataExpr
  let dataExpr = this.rawData.processZlib()
  this.data = dataExpr

proc fromFile*(_: typedesc[ZlibWithHeader78], filename: string): ZlibWithHeader78 =
  ZlibWithHeader78.read(newKaitaiFileStream(filename), nil, nil)

