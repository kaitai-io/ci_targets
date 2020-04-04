import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  RepeatNStrz* = ref object of KaitaiStruct
    qty*: uint32
    lines*: seq[string]
    parent*: KaitaiStruct

proc read*(_: typedesc[RepeatNStrz], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNStrz


proc read*(_: typedesc[RepeatNStrz], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): RepeatNStrz =
  template this: untyped = result
  this = new(RepeatNStrz)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.qty = this.io.readU4le()
  for i in 0 ..< this.qty:
    this.lines.add(convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))

proc fromFile*(_: typedesc[RepeatNStrz], filename: string): RepeatNStrz =
  RepeatNStrz.read(newKaitaiFileStream(filename), nil, nil)

