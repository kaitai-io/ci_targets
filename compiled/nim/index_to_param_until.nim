import kaitai_struct_nim_runtime
import options
import encodings

type
  IndexToParamUntil_Block* = ref IndexToParamUntil_BlockObj
  IndexToParamUntil_BlockObj* = object
    buf*: string
    idx*: int32
    io*: KaitaiStream
    root*: IndexToParamUntil
    parent*: IndexToParamUntil
  IndexToParamUntil* = ref IndexToParamUntilObj
  IndexToParamUntilObj* = object
    qty*: uint32
    sizes*: seq[uint32]
    blocks*: seq[IndexToParamUntil_Block]
    io*: KaitaiStream
    root*: IndexToParamUntil
    parent*: ref RootObj

## IndexToParamUntil_Block
proc read*(_: typedesc[IndexToParamUntil_Block], io: KaitaiStream, root: IndexToParamUntil, parent: IndexToParamUntil): IndexToParamUntil_Block =
  let this = new(IndexToParamUntil_Block)
  let root = if root == nil: cast[IndexToParamUntil](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.buf = convert(this.io.readBytes(int(this._root.sizes[this.idx])), srcEncoding = "ASCII")
  result = this

proc fromFile*(_: typedesc[IndexToParamUntil_Block], filename: string): IndexToParamUntil_Block =
  IndexToParamUntil_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IndexToParamUntil_BlockObj) =
  close(x.io)

## IndexToParamUntil
proc read*(_: typedesc[IndexToParamUntil], io: KaitaiStream, root: IndexToParamUntil, parent: ref RootObj): IndexToParamUntil =
  let this = new(IndexToParamUntil)
  let root = if root == nil: cast[IndexToParamUntil](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.qty = this.io.readU4le()
  sizes = newSeq[uint32](this.qty)
  for i in 0 ..< this.qty:
    this.sizes.add(this.io.readU4le())
  this.blocks = newSeq[IndexToParamUntil_Block]()
  block:
    IndexToParamUntil_Block _;
    var i: int
    while true:
      let _ = IndexToParamUntil_Block.read(this.io, this.root, this, this._index)
      this.blocks.add(_)
      if this.stream.isEof:
        break
      inc i
    result = this

  proc fromFile*(_: typedesc[IndexToParamUntil], filename: string): IndexToParamUntil =
    IndexToParamUntil.read(newKaitaiFileStream(filename), nil, nil)

  proc `=destroy`(x: var IndexToParamUntilObj) =
    close(x.io)

