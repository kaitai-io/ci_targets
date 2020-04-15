import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  IndexSizes* = ref object of KaitaiStruct
    qty*: uint32
    sizes*: seq[uint32]
    bufs*: seq[string]
    parent*: KaitaiStruct

proc read*(_: typedesc[IndexSizes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IndexSizes


proc read*(_: typedesc[IndexSizes], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IndexSizes =
  template this: untyped = result
  this = new(IndexSizes)
  let root = if root == nil: cast[IndexSizes](this) else: cast[IndexSizes](root)
  this.io = io
  this.root = root
  this.parent = parent

  let qtyExpr = this.io.readU4le()
  this.qty = qtyExpr
  for i in 0 ..< this.qty:
    let sizesExpr = this.io.readU4le()
    this.sizes.add(sizesExpr)
  for i in 0 ..< this.qty:
    let bufsExpr = encode(this.io.readBytes(int(this.sizes[i])), "ASCII")
    this.bufs.add(bufsExpr)

proc fromFile*(_: typedesc[IndexSizes], filename: string): IndexSizes =
  IndexSizes.read(newKaitaiFileStream(filename), nil, nil)

