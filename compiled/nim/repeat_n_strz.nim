import kaitai_struct_nim_runtime
import options

type
  RepeatNStrz* = ref object of KaitaiStruct
    qty*: uint32
    lines*: seq[string]
    parent*: KaitaiStruct

proc read*(_: typedesc[RepeatNStrz], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNStrz


proc read*(_: typedesc[RepeatNStrz], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNStrz =
  template this: untyped = result
  this = new(RepeatNStrz)
  let root = if root == nil: cast[RepeatNStrz](this) else: cast[RepeatNStrz](root)
  this.io = io
  this.root = root
  this.parent = parent

  let qtyExpr = this.io.readU4le()
  this.qty = qtyExpr
  for i in 0 ..< int(this.qty):
    let it = encode(this.io.readBytesTerm(0, false, true, true), "UTF-8")
    this.lines.add(it)

proc fromFile*(_: typedesc[RepeatNStrz], filename: string): RepeatNStrz =
  RepeatNStrz.read(newKaitaiFileStream(filename), nil, nil)

