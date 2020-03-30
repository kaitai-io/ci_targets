import kaitai_struct_nim_runtime
import options
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
  let this = new(RepeatNStrzDouble)
  let root = if root == nil: cast[RepeatNStrzDouble](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let qty = this.io.readU4le()
  this.qty = qty
  lines1 = newSeq[string]((this.qty / 2))
  for i in 0 ..< (this.qty / 2):
    this.lines1.add(convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))
  lines2 = newSeq[string]((this.qty / 2))
  for i in 0 ..< (this.qty / 2):
    this.lines2.add(convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))
  result = this

proc fromFile*(_: typedesc[RepeatNStrzDouble], filename: string): RepeatNStrzDouble =
  RepeatNStrzDouble.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatNStrzDoubleObj) =
  close(x.io)

