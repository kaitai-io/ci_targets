import kaitai_struct_nim_runtime

type
  InstanceUserArrayentry* = ref InstanceUserArrayentryObj
  InstanceUserArrayentryObj* = object
    ofs*: uint32
    entrySize*: uint32
    qtyEntries*: uint32
    io*: KaitaiStream
    root*: InstanceUserArray
    parent*: ref RootObj
    rawUserEntriesInst*: seq[string]
  InstanceUserArray* = ref InstanceUserArrayObj
  InstanceUserArrayObj* = object
    ofs*: uint32
    entrySize*: uint32
    qtyEntries*: uint32
    io*: KaitaiStream
    root*: InstanceUserArray
    parent*: ref RootObj
    rawUserEntriesInst*: seq[string]

### InstanceUserArrayentry ###
proc read*(_: typedesc[InstanceUserArrayentry], io: KaitaiStream, root: InstanceUserArray, parent: InstanceUserArray): InstanceUserArrayentry =
  result = new(InstanceUserArrayentry)
  let root = if root == nil: cast[InstanceUserArray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.word1 = result.io.readU2le()
  result.word2 = result.io.readU2le()

proc fromFile*(_: typedesc[InstanceUserArrayentry], filename: string): InstanceUserArrayentry =
  InstanceUserArrayentry.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceUserArrayentryObj) =
  close(x.io)

### InstanceUserArray ###
proc read*(_: typedesc[InstanceUserArray], io: KaitaiStream, root: InstanceUserArray, parent: ref RootObj): InstanceUserArray =
  result = new(InstanceUserArray)
  let root = if root == nil: cast[InstanceUserArray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.ofs = result.io.readU4le()
  result.entrySize = result.io.readU4le()
  result.qtyEntries = result.io.readU4le()

proc fromFile*(_: typedesc[InstanceUserArray], filename: string): InstanceUserArray =
  InstanceUserArray.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var InstanceUserArrayObj) =
  close(x.io)

