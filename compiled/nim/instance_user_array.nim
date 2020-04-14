import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  InstanceUserArray* = ref object of KaitaiStruct
    ofs*: uint32
    entrySize*: uint32
    qtyEntries*: uint32
    parent*: KaitaiStruct
    rawUserEntriesInst*: seq[seq[byte]]
    userEntriesInst*: seq[InstanceUserArray_Entry]
  InstanceUserArray_Entry* = ref object of KaitaiStruct
    word1*: uint16
    word2*: uint16
    parent*: InstanceUserArray

proc read*(_: typedesc[InstanceUserArray], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceUserArray
proc read*(_: typedesc[InstanceUserArray_Entry], io: KaitaiStream, root: KaitaiStruct, parent: InstanceUserArray): InstanceUserArray_Entry

proc userEntries*(this: InstanceUserArray): seq[InstanceUserArray_Entry]

proc read*(_: typedesc[InstanceUserArray], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): InstanceUserArray =
  template this: untyped = result
  this = new(InstanceUserArray)
  let root = if root == nil: cast[InstanceUserArray](this) else: cast[InstanceUserArray](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.ofs = this.io.readU4le()
  this.entrySize = this.io.readU4le()
  this.qtyEntries = this.io.readU4le()

proc userEntries(this: InstanceUserArray): seq[InstanceUserArray_Entry] = 
  if this.userEntriesInst.len != 0:
    return this.userEntriesInst
  if this.ofs > 0:
    let pos = this.io.pos()
    this.io.seek(int(this.ofs))
    for i in 0 ..< this.qtyEntries:
      this.rawUserEntriesInst.add(this.io.readBytes(int(this.entrySize)))
      let rawUserEntriesInstIo = newKaitaiStream(this.rawUserEntriesInst)
      this.userEntriesInst.add(InstanceUserArray_Entry.read(rawUserEntriesInstIo, this.root, this))
    this.io.seek(pos)
  if this.userEntriesInst.len != 0:
    return this.userEntriesInst

proc fromFile*(_: typedesc[InstanceUserArray], filename: string): InstanceUserArray =
  InstanceUserArray.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[InstanceUserArray_Entry], io: KaitaiStream, root: KaitaiStruct, parent: InstanceUserArray): InstanceUserArray_Entry =
  template this: untyped = result
  this = new(InstanceUserArray_Entry)
  let root = if root == nil: cast[InstanceUserArray](this) else: cast[InstanceUserArray](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.word1 = this.io.readU2le()
  this.word2 = this.io.readU2le()

proc fromFile*(_: typedesc[InstanceUserArray_Entry], filename: string): InstanceUserArray_Entry =
  InstanceUserArray_Entry.read(newKaitaiFileStream(filename), nil, nil)

