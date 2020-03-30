import kaitai_struct_nim_runtime
import options
import encodings

type
  IndexToParamExpr_Block* = ref IndexToParamExpr_BlockObj
  IndexToParamExpr_BlockObj* = object
    buf*: string
    idx*: int32
    io*: KaitaiStream
    root*: IndexToParamExpr
    parent*: IndexToParamExpr
  IndexToParamExpr* = ref IndexToParamExprObj
  IndexToParamExprObj* = object
    qty*: uint32
    sizes*: seq[uint32]
    blocks*: seq[IndexToParamExpr_Block]
    io*: KaitaiStream
    root*: IndexToParamExpr
    parent*: ref RootObj

### IndexToParamExpr_Block ###
proc read*(_: typedesc[IndexToParamExpr_Block], io: KaitaiStream, root: IndexToParamExpr, parent: IndexToParamExpr): IndexToParamExpr_Block =
  let this = new(IndexToParamExpr_Block)
  let root = if root == nil: cast[IndexToParamExpr](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let buf = convert(this.io.readBytes(int(this._root.this.sizes[this.idx])), srcEncoding = "ASCII")
  this.buf = buf
  result = this

proc fromFile*(_: typedesc[IndexToParamExpr_Block], filename: string): IndexToParamExpr_Block =
  IndexToParamExpr_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IndexToParamExpr_BlockObj) =
  close(x.io)

### IndexToParamExpr ###
proc read*(_: typedesc[IndexToParamExpr], io: KaitaiStream, root: IndexToParamExpr, parent: ref RootObj): IndexToParamExpr =
  let this = new(IndexToParamExpr)
  let root = if root == nil: cast[IndexToParamExpr](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let qty = this.io.readU4le()
  this.qty = qty
  sizes = newSeq[uint32](this.qty)
  for i in 0 ..< this.qty:
    this.sizes.add(this.io.readU4le())
  blocks = newSeq[IndexToParamExpr_Block](this.qty)
  for i in 0 ..< this.qty:
    this.blocks.add(IndexToParamExpr_Block.read(this.io, this.root, this, this._index))
  result = this

proc fromFile*(_: typedesc[IndexToParamExpr], filename: string): IndexToParamExpr =
  IndexToParamExpr.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IndexToParamExprObj) =
  close(x.io)

