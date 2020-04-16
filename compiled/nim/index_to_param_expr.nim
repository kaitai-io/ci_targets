import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  IndexToParamExpr* = ref object of KaitaiStruct
    qty*: uint32
    sizes*: seq[uint32]
    blocks*: seq[IndexToParamExpr_Block]
    parent*: KaitaiStruct
  IndexToParamExpr_Block* = ref object of KaitaiStruct
    buf*: string
    idx*: int32
    parent*: IndexToParamExpr

proc read*(_: typedesc[IndexToParamExpr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IndexToParamExpr
proc read*(_: typedesc[IndexToParamExpr_Block], io: KaitaiStream, root: KaitaiStruct, parent: IndexToParamExpr, idx: any): IndexToParamExpr_Block


proc read*(_: typedesc[IndexToParamExpr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IndexToParamExpr =
  template this: untyped = result
  this = new(IndexToParamExpr)
  let root = if root == nil: cast[IndexToParamExpr](this) else: cast[IndexToParamExpr](root)
  this.io = io
  this.root = root
  this.parent = parent

  let qtyExpr = this.io.readU4le()
  this.qty = qtyExpr
  for i in 0 ..< int(this.qty):
    let it = this.io.readU4le()
    this.sizes.add(it)
  for i in 0 ..< int(this.qty):
    let it = IndexToParamExpr_Block.read(this.io, this.root, this, i)
    this.blocks.add(it)

proc fromFile*(_: typedesc[IndexToParamExpr], filename: string): IndexToParamExpr =
  IndexToParamExpr.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IndexToParamExpr_Block], io: KaitaiStream, root: KaitaiStruct, parent: IndexToParamExpr, idx: any): IndexToParamExpr_Block =
  template this: untyped = result
  this = new(IndexToParamExpr_Block)
  let root = if root == nil: cast[IndexToParamExpr](this) else: cast[IndexToParamExpr](root)
  this.io = io
  this.root = root
  this.parent = parent
  let idxExpr = int32(idx)
  this.idx = idxExpr

  let bufExpr = encode(this.io.readBytes(int(IndexToParamExpr(this.root).sizes[this.idx])), "ASCII")
  this.buf = bufExpr

proc fromFile*(_: typedesc[IndexToParamExpr_Block], filename: string): IndexToParamExpr_Block =
  IndexToParamExpr_Block.read(newKaitaiFileStream(filename), nil, nil)

