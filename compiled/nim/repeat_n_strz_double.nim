import kaitai_struct_nim_runtime
import encodings

type
  RepeatNStrzDouble* = ref RepeatNStrzDoubleObj
  RepeatNStrzDoubleObj* = object
    qty*: uint32
    lines1*: seq[string]
    lines2*: seq[string]
    io*: KaitaiStream
    root*: RepeatNStrzDouble
    parent*: ref RootObj

### RepeatNStrzDouble ###
proc read*(_: typedesc[RepeatNStrzDouble], io: KaitaiStream, root: RepeatNStrzDouble, parent: ref RootObj): RepeatNStrzDouble =
  result = new(RepeatNStrzDouble)
  let root = if root == nil: cast[RepeatNStrzDouble](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let qty = io.readU4le()
  result.qty = qty
  lines1 = newSeq[string]((qty / 2))
  for i in 0 ..< (qty / 2):
    lines1.add(convert(io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))
  lines2 = newSeq[string]((qty / 2))
  for i in 0 ..< (qty / 2):
    lines2.add(convert(io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))

proc fromFile*(_: typedesc[RepeatNStrzDouble], filename: string): RepeatNStrzDouble =
  RepeatNStrzDouble.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatNStrzDoubleObj) =
  close(x.io)

