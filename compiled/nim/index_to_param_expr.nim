import kaitai_struct_nim_runtime
import options
import encodings

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

proc read*(_: typedesc[IndexToParamExpr_Block], io: KaitaiStream, root: KaitaiStruct, parent: IndexToParamExpr): IndexToParamExpr_Block =
  template this: untyped = result
  this = new(IndexToParamExpr_Block)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.buf = convert(this.io.readBytes(int(this._root.sizes[this.idx])), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[IndexToParamExpr_Block], filename: string): IndexToParamExpr_Block =
  IndexToParamExpr_Block.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IndexToParamExpr], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IndexToParamExpr =
  template this: untyped = result
  this = new(IndexToParamExpr)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.qty = this.io.readU4le()

  ##[
  ]##
  sizes = newSeq[uint32](this.qty)
  for i in 0 ..< this.qty:
    this.sizes.add(this.io.readU4le())

  ##[
  ]##
  blocks = newSeq[IndexToParamExpr_Block](this.qty)
  for i in 0 ..< this.qty:
    this.blocks.add(IndexToParamExpr_Block.read(this.io, this.root, this, this._index))

proc fromFile*(_: typedesc[IndexToParamExpr], filename: string): IndexToParamExpr =
  IndexToParamExpr.read(newKaitaiFileStream(filename), nil, nil)

