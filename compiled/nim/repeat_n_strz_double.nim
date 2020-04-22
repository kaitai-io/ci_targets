import kaitai_struct_nim_runtime
import options

type
  RepeatNStrzDouble* = ref object of KaitaiStruct
    qty*: uint32
    lines1*: seq[string]
    lines2*: seq[string]
    parent*: KaitaiStruct

proc read*(_: typedesc[RepeatNStrzDouble], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNStrzDouble


proc read*(_: typedesc[RepeatNStrzDouble], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNStrzDouble =
  template this: untyped = result
  this = new(RepeatNStrzDouble)
  let root = if root == nil: cast[RepeatNStrzDouble](this) else: cast[RepeatNStrzDouble](root)
  this.io = io
  this.root = root
  this.parent = parent

  let qtyExpr = this.io.readU4le()
  this.qty = qtyExpr
  for i in 0 ..< int((this.qty div 2)):
    let it = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
    this.lines1.add(it)
  for i in 0 ..< int((this.qty div 2)):
    let it = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
    this.lines2.add(it)

proc fromFile*(_: typedesc[RepeatNStrzDouble], filename: string): RepeatNStrzDouble =
  RepeatNStrzDouble.read(newKaitaiFileStream(filename), nil, nil)

