import kaitai_struct_nim_runtime
import options

type
  IndexToParamEos* = ref object of KaitaiStruct
    qty*: uint32
    sizes*: seq[uint32]
    blocks*: seq[IndexToParamEos_Block]
    parent*: KaitaiStruct
  IndexToParamEos_Block* = ref object of KaitaiStruct
    buf*: string
    idx*: int32
    parent*: IndexToParamEos

proc read*(_: typedesc[IndexToParamEos], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IndexToParamEos
proc read*(_: typedesc[IndexToParamEos_Block], io: KaitaiStream, root: KaitaiStruct, parent: IndexToParamEos, idx: any): IndexToParamEos_Block


proc read*(_: typedesc[IndexToParamEos], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IndexToParamEos =
  template this: untyped = result
  this = new(IndexToParamEos)
  let root = if root == nil: cast[IndexToParamEos](this) else: cast[IndexToParamEos](root)
  this.io = io
  this.root = root
  this.parent = parent

  let qtyExpr = this.io.readU4le()
  this.qty = qtyExpr
  for i in 0 ..< int(this.qty):
    let it = this.io.readU4le()
    this.sizes.add(it)
  block:
    var i: int
    while not this.io.isEof:
      let it = IndexToParamEos_Block.read(this.io, this.root, this, i)
      this.blocks.add(it)
      inc i

proc fromFile*(_: typedesc[IndexToParamEos], filename: string): IndexToParamEos =
  IndexToParamEos.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IndexToParamEos_Block], io: KaitaiStream, root: KaitaiStruct, parent: IndexToParamEos, idx: any): IndexToParamEos_Block =
  template this: untyped = result
  this = new(IndexToParamEos_Block)
  let root = if root == nil: cast[IndexToParamEos](this) else: cast[IndexToParamEos](root)
  this.io = io
  this.root = root
  this.parent = parent
  let idxExpr = int32(idx)
  this.idx = idxExpr

  let bufExpr = encode(this.io.readBytes(int(IndexToParamEos(this.root).sizes[this.idx])), "ASCII")
  this.buf = bufExpr

proc fromFile*(_: typedesc[IndexToParamEos_Block], filename: string): IndexToParamEos_Block =
  IndexToParamEos_Block.read(newKaitaiFileStream(filename), nil, nil)

