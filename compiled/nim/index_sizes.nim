import kaitai_struct_nim_runtime
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

### IndexSizes ###
proc read*(_: typedesc[IndexSizes], io: KaitaiStream, root: IndexSizes, parent: ref RootObj): IndexSizes =
  result = new(IndexSizes)
  let root = if root == nil: cast[IndexSizes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.qty = result.io.readU4le()
  sizes = newSeq[uint32](qty)
  for i in 0 ..< qty:
    result.sizes.add(result.io.readU4le())
  bufs = newSeq[string](qty)
  for i in 0 ..< qty:
    result.bufs.add(convert(result.io.readBytes(sizes[_index]), srcEncoding = "ASCII"))

proc fromFile*(_: typedesc[IndexSizes], filename: string): IndexSizes =
  IndexSizes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IndexSizesObj) =
  close(x.io)

