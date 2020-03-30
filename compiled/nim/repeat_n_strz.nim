import kaitai_struct_nim_runtime
import options
import encodings

type
  RepeatNStrz* = ref RepeatNStrzObj
  RepeatNStrzObj* = object
    qty*: uint32
    lines*: seq[string]
    io*: KaitaiStream
    root*: RepeatNStrz
    parent*: ref RootObj

## RepeatNStrz
proc read*(_: typedesc[RepeatNStrz], io: KaitaiStream, root: RepeatNStrz, parent: ref RootObj): RepeatNStrz =
  let this = new(RepeatNStrz)
  let root = if root == nil: cast[RepeatNStrz](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.qty = this.io.readU4le()
  lines = newSeq[string](this.qty)
  for i in 0 ..< this.qty:
    this.lines.add(convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))
  result = this

proc fromFile*(_: typedesc[RepeatNStrz], filename: string): RepeatNStrz =
  RepeatNStrz.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatNStrzObj) =
  close(x.io)

