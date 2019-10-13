import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  InstanceStdArray* = ref InstanceStdArrayObj
  InstanceStdArrayObj* = object
    io: KaitaiStream
    root*: InstanceStdArray
    parent*: ref RootObj
    ofs*: uint32
    entrySize*: uint32
    qtyEntries*: uint32
    entriesInst: proc(): seq[seq[byte]]

# InstanceStdArray
template `.`*(a: InstanceStdArray, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[InstanceStdArray], io: KaitaiStream, root: InstanceStdArray, parent: ref RootObj): owned InstanceStdArray =
  result = new(InstanceStdArray)
  let root = if root == nil: cast[InstanceStdArray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let ofs = readU4le(io)
  result.ofs = ofs
  let entrySize = readU4le(io)
  result.entrySize = entrySize
  let qtyEntries = readU4le(io)
  result.qtyEntries = qtyEntries

  var entriesVal: Option[seq[seq[byte]]]
  let entries = proc(): seq[seq[byte]] =
    if isNone(entriesVal):
      entriesVal = readBytes(io, int(result.entrySize))
    get(entriesVal)
  result.entriesInst = entries

proc fromFile*(_: typedesc[InstanceStdArray], filename: string): owned InstanceStdArray =
  InstanceStdArray.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var InstanceStdArrayObj) =
  close(x.io)

