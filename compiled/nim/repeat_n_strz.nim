import kaitai_struct_nim_runtime
import encodings

type
  RepeatNStrz* = ref RepeatNStrzObj
  RepeatNStrzObj* = object
    qty*: uint32
    lines*: seq[string]
    io*: KaitaiStream
    root*: RepeatNStrz
    parent*: ref RootObj

### RepeatNStrz ###
proc read*(_: typedesc[RepeatNStrz], io: KaitaiStream, root: RepeatNStrz, parent: ref RootObj): RepeatNStrz =
  result = new(RepeatNStrz)
  let root = if root == nil: cast[RepeatNStrz](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.qty = result.io.readU4le()
  lines = newSeq[string](qty)
  for i in 0 ..< qty:
    result.lines.add(convert(result.io.readBytesTerm(0, false, true, true), srcEncoding = "UTF-8"))

proc fromFile*(_: typedesc[RepeatNStrz], filename: string): RepeatNStrz =
  RepeatNStrz.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RepeatNStrzObj) =
  close(x.io)

