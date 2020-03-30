import kaitai_struct_nim_runtime
import options
import encodings

type
  IndexToParamEos_Block* = ref IndexToParamEos_BlockObj
  IndexToParamEos_BlockObj* = object
    buf*: string
    idx*: int32
    io*: KaitaiStream
    root*: IndexToParamEos
    parent*: IndexToParamEos
  IndexToParamEos* = ref IndexToParamEosObj
  IndexToParamEosObj* = object
    qty*: uint32
    sizes*: seq[uint32]
    blocks*: seq[IndexToParamEos_Block]
    io*: KaitaiStream
    root*: IndexToParamEos
    parent*: ref RootObj

## IndexToParamEos_Block
proc read*(_: typedesc[IndexToParamEos_Block], io: KaitaiStream, root: IndexToParamEos, parent: IndexToParamEos): IndexToParamEos_Block =
  let this = new(IndexToParamEos_Block)
  let root = if root == nil: cast[IndexToParamEos](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.buf = convert(this.io.readBytes(int(this._root.sizes[this.idx])), srcEncoding = "ASCII")
  result = this

proc fromFile*(_: typedesc[IndexToParamEos_Block], filename: string): IndexToParamEos_Block =
  IndexToParamEos_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IndexToParamEos_BlockObj) =
  close(x.io)

## IndexToParamEos
proc read*(_: typedesc[IndexToParamEos], io: KaitaiStream, root: IndexToParamEos, parent: ref RootObj): IndexToParamEos =
  let this = new(IndexToParamEos)
  let root = if root == nil: cast[IndexToParamEos](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.qty = this.io.readU4le()
  sizes = newSeq[uint32](this.qty)
  for i in 0 ..< this.qty:
    this.sizes.add(this.io.readU4le())
  this.blocks = newSeq[IndexToParamEos_Block]()
  block:
    var i: int
    while not this.io.eof:
      this.blocks.add(IndexToParamEos_Block.read(this.io, this.root, this, this._index))
      inc i
  result = this

proc fromFile*(_: typedesc[IndexToParamEos], filename: string): IndexToParamEos =
  IndexToParamEos.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IndexToParamEosObj) =
  close(x.io)

