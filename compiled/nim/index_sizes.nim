import kaitai_struct_nim_runtime
import options
import encodings

type
  IndexSizes* = ref IndexSizesObj
  IndexSizesObj* = object
    qty*: uint32
    sizes*: seq[uint32]
    bufs*: seq[string]
    io*: KaitaiStream
    root*: IndexSizes
    parent*: ref RootObj

## IndexSizes
proc read*(_: typedesc[IndexSizes], io: KaitaiStream, root: IndexSizes, parent: ref RootObj): IndexSizes =
  let this = new(IndexSizes)
  let root = if root == nil: cast[IndexSizes](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.qty = this.io.readU4le()
  sizes = newSeq[uint32](this.qty)
  for i in 0 ..< this.qty:
    this.sizes.add(this.io.readU4le())
  bufs = newSeq[string](this.qty)
  for i in 0 ..< this.qty:
    this.bufs.add(convert(this.io.readBytes(int(this.sizes[this._index])), srcEncoding = "ASCII"))
  result = this

proc fromFile*(_: typedesc[IndexSizes], filename: string): IndexSizes =
  IndexSizes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IndexSizesObj) =
  close(x.io)

