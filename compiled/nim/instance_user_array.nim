import kaitai_struct_nim_runtime

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

### InstanceUserArray_Entry ###
proc read*(_: typedesc[InstanceUserArray_Entry], io: KaitaiStream, root: InstanceUserArray, parent: InstanceUserArray): InstanceUserArray_Entry =
  result = new(InstanceUserArray_Entry)
  let root = if root == nil: cast[InstanceUserArray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let word1 = io.readU2le()
  result.word1 = word1
  let word2 = io.readU2le()
  result.word2 = word2

proc fromFile*(_: typedesc[InstanceUserArray_Entry], filename: string): InstanceUserArray_Entry =
  InstanceUserArray_Entry.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceUserArray_EntryObj) =
  close(x.io)

### InstanceUserArray ###
proc read*(_: typedesc[InstanceUserArray], io: KaitaiStream, root: InstanceUserArray, parent: ref RootObj): InstanceUserArray =
  result = new(InstanceUserArray)
  let root = if root == nil: cast[InstanceUserArray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let ofs = io.readU4le()
  result.ofs = ofs
  let entrySize = io.readU4le()
  result.entrySize = entrySize
  let qtyEntries = io.readU4le()
  result.qtyEntries = qtyEntries

proc fromFile*(_: typedesc[InstanceUserArray], filename: string): InstanceUserArray =
  InstanceUserArray.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceUserArrayObj) =
  close(x.io)

