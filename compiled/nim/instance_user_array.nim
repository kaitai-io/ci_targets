import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  Entry* = ref EntryObj
  EntryObj* = object
    io: KaitaiStream
    root*: InstanceUserArray
    parent*: InstanceUserArray
    word1*: uint16
    word2*: uint16
  InstanceUserArray* = ref InstanceUserArrayObj
  InstanceUserArrayObj* = object
    io: KaitaiStream
    root*: InstanceUserArray
    parent*: ref RootObj
    ofs*: uint32
    entrySize*: uint32
    qtyEntries*: uint32
    userEntriesInst: proc(): seq[Entry]

# Entry
proc read*(_: typedesc[Entry], io: KaitaiStream, root: InstanceUserArray, parent: InstanceUserArray): owned Entry =
  result = new(Entry)
  let root = if root == nil: cast[InstanceUserArray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.word1 = readU2le(io)
  result.word2 = readU2le(io)

proc fromFile*(_: typedesc[Entry], filename: string): owned Entry =
  Entry.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var EntryObj) =
  close(x.io)

# InstanceUserArray
template `.`*(a: InstanceUserArray, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[InstanceUserArray], io: KaitaiStream, root: InstanceUserArray, parent: ref RootObj): owned InstanceUserArray =
  result = new(InstanceUserArray)
  let root = if root == nil: cast[InstanceUserArray](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.ofs = readU4le(io)
  result.entrySize = readU4le(io)
  result.qtyEntries = readU4le(io)

proc fromFile*(_: typedesc[InstanceUserArray], filename: string): owned InstanceUserArray =
  InstanceUserArray.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var InstanceUserArrayObj) =
  close(x.io)

