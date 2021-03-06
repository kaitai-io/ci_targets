import kaitai_struct_nim_runtime
import options

type
  IndexToParamUntil* = ref object of KaitaiStruct
    `qty`*: uint32
    `sizes`*: seq[uint32]
    `blocks`*: seq[IndexToParamUntil_Block]
    `parent`*: KaitaiStruct
  IndexToParamUntil_Block* = ref object of KaitaiStruct
    `buf`*: string
    `idx`*: int32
    `parent`*: IndexToParamUntil

proc read*(_: typedesc[IndexToParamUntil], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IndexToParamUntil
proc read*(_: typedesc[IndexToParamUntil_Block], io: KaitaiStream, root: KaitaiStruct, parent: IndexToParamUntil, idx: any): IndexToParamUntil_Block


proc read*(_: typedesc[IndexToParamUntil], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IndexToParamUntil =
  template this: untyped = result
  this = new(IndexToParamUntil)
  let root = if root == nil: cast[IndexToParamUntil](this) else: cast[IndexToParamUntil](root)
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
    while true:
      let it = IndexToParamUntil_Block.read(this.io, this.root, this, i)
      this.blocks.add(it)
      if this.io.isEof:
        break
      inc i

proc fromFile*(_: typedesc[IndexToParamUntil], filename: string): IndexToParamUntil =
  IndexToParamUntil.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IndexToParamUntil_Block], io: KaitaiStream, root: KaitaiStruct, parent: IndexToParamUntil, idx: any): IndexToParamUntil_Block =
  template this: untyped = result
  this = new(IndexToParamUntil_Block)
  let root = if root == nil: cast[IndexToParamUntil](this) else: cast[IndexToParamUntil](root)
  this.io = io
  this.root = root
  this.parent = parent
  let idxExpr = int32(idx)
  this.idx = idxExpr

  let bufExpr = encode(this.io.readBytes(int(IndexToParamUntil(this.root).sizes[this.idx])), "ASCII")
  this.buf = bufExpr

proc fromFile*(_: typedesc[IndexToParamUntil_Block], filename: string): IndexToParamUntil_Block =
  IndexToParamUntil_Block.read(newKaitaiFileStream(filename), nil, nil)

