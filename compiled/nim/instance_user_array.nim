import kaitai_struct_nim_runtime
import options

type
  InstanceUserArray_Entry* = ref InstanceUserArray_EntryObj
  InstanceUserArray_EntryObj* = object
    word1*: uint16
    word2*: uint16
    io*: KaitaiStream
    root*: InstanceUserArray
    parent*: InstanceUserArray
  InstanceUserArray* = ref InstanceUserArrayObj
  InstanceUserArrayObj* = object
    ofs*: uint32
    entrySize*: uint32
    qtyEntries*: uint32
    io*: KaitaiStream
    root*: InstanceUserArray
    parent*: ref RootObj
    rawUserEntriesInst*: seq[string]
    userEntriesInst*: Option[seq[InstanceUserArray_Entry]]

### InstanceUserArray_Entry ###
proc read*(_: typedesc[InstanceUserArray_Entry], io: KaitaiStream, root: InstanceUserArray, parent: InstanceUserArray): InstanceUserArray_Entry =
  let this = new(InstanceUserArray_Entry)
  let root = if root == nil: cast[InstanceUserArray](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let word1 = this.io.readU2le()
  this.word1 = word1
  let word2 = this.io.readU2le()
  this.word2 = word2
  result = this

proc fromFile*(_: typedesc[InstanceUserArray_Entry], filename: string): InstanceUserArray_Entry =
  InstanceUserArray_Entry.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceUserArray_EntryObj) =
  close(x.io)

### InstanceUserArray ###
proc userEntries*(this: InstanceUserArray): seq[InstanceUserArray_Entry]
proc userEntries(this: InstanceUserArray): seq[InstanceUserArray_Entry] = 
  if isSome(this.userEntriesInst):
    return get(this.userEntriesInst)
  if this.ofs > 0:
    let pos = this.io.pos()
    this.io.seek(this.ofs)
    this.rawUserEntriesInst = newString(this.qtyEntries)
    userEntriesInst = newSeq[InstanceUserArray_Entry](this.qtyEntries)
    for i in 0 ..< this.qtyEntries:
      this.rawUserEntriesInst.add(this.io.readBytes(int(this.entrySize)))
      let rawUserEntriesInstIo = newKaitaiStringStream(rawUserEntriesInst)
      this.userEntriesInst.add(InstanceUserArray_Entry.read(rawUserEntriesInstIo, this.root, this))
    this.io.seek(pos)
  return get(this.userEntriesInst)

proc read*(_: typedesc[InstanceUserArray], io: KaitaiStream, root: InstanceUserArray, parent: ref RootObj): InstanceUserArray =
  let this = new(InstanceUserArray)
  let root = if root == nil: cast[InstanceUserArray](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let ofs = this.io.readU4le()
  this.ofs = ofs
  let entrySize = this.io.readU4le()
  this.entrySize = entrySize
  let qtyEntries = this.io.readU4le()
  this.qtyEntries = qtyEntries
  result = this

proc fromFile*(_: typedesc[InstanceUserArray], filename: string): InstanceUserArray =
  InstanceUserArray.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceUserArrayObj) =
  close(x.io)

