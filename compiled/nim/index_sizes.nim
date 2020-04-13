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

  this.qty = this.io.readU4le()
  for i in 0 ..< this.qty:
    this.sizes.add(this.io.readU4le())
  for i in 0 ..< this.qty:
    this.bufs.add(encode(this.io.readBytes(int(this.sizes[i])), "ASCII"))

proc fromFile*(_: typedesc[IndexSizes], filename: string): IndexSizes =
  IndexSizes.read(newKaitaiFileStream(filename), nil, nil)

