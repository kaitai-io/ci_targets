import kaitai_struct_nim_runtime
import options

type
  InstanceStdArray* = ref InstanceStdArrayObj
  InstanceStdArrayObj* = object
    ofs*: uint32
    entrySize*: uint32
    qtyEntries*: uint32
    io*: KaitaiStream
    root*: InstanceStdArray
    parent*: ref RootObj
    entriesInst*: Option[seq[string]]

## InstanceStdArray
proc entries*(this: InstanceStdArray): seq[string]
proc entries(this: InstanceStdArray): seq[string] = 
  if isSome(this.entriesInst):
    return get(this.entriesInst)
  let pos = this.io.pos()
  this.io.seek(this.ofs)
  entriesInst = newSeq[string](this.qtyEntries)
  for i in 0 ..< this.qtyEntries:
    this.entriesInst.add(this.io.readBytes(int(this.entrySize)))
  this.io.seek(pos)
  return get(this.entriesInst)

proc read*(_: typedesc[InstanceStdArray], io: KaitaiStream, root: InstanceStdArray, parent: ref RootObj): InstanceStdArray =
  let this = new(InstanceStdArray)
  let root = if root == nil: cast[InstanceStdArray](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.ofs = this.io.readU4le()
  this.entrySize = this.io.readU4le()
  this.qtyEntries = this.io.readU4le()
  result = this

proc fromFile*(_: typedesc[InstanceStdArray], filename: string): InstanceStdArray =
  InstanceStdArray.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceStdArrayObj) =
  close(x.io)

