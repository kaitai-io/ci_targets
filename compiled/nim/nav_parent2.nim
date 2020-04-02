import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  NavParent2* = ref object of KaitaiStruct
    ofsTags*: uint32
    numTags*: uint32
    tags*: seq[NavParent2_Tag]
    parent*: KaitaiStruct
  NavParent2_Tag* = ref object of KaitaiStruct
    name*: string
    ofs*: uint32
    numItems*: uint32
    parent*: NavParent2
    tagContentInst*: Option[NavParent2_Tag_TagChar]
  NavParent2_Tag_TagChar* = ref object of KaitaiStruct
    content*: string
    parent*: NavParent2_Tag

proc read*(_: typedesc[NavParent2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParent2
proc read*(_: typedesc[NavParent2_Tag], io: KaitaiStream, root: KaitaiStruct, parent: NavParent2): NavParent2_Tag
proc read*(_: typedesc[NavParent2_Tag_TagChar], io: KaitaiStream, root: KaitaiStruct, parent: NavParent2_Tag): NavParent2_Tag_TagChar

proc read*(_: typedesc[NavParent2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParent2 =
  template this: untyped = result
  this = new(NavParent2)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.ofsTags = this.io.readU4le()
  this.numTags = this.io.readU4le()
  tags = newSeq[NavParent2_Tag](this.numTags)
  for i in 0 ..< this.numTags:
    this.tags.add(NavParent2_Tag.read(this.io, this.root, this))

proc fromFile*(_: typedesc[NavParent2], filename: string): NavParent2 =
  NavParent2.read(newKaitaiFileStream(filename), nil, nil)

proc tagContent*(this: NavParent2_Tag): NavParent2_Tag_TagChar
proc read*(_: typedesc[NavParent2_Tag], io: KaitaiStream, root: KaitaiStruct, parent: NavParent2): NavParent2_Tag =
  template this: untyped = result
  this = new(NavParent2_Tag)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.name = convert(this.io.readBytes(int(4)), srcEncoding = "ASCII")
  this.ofs = this.io.readU4le()
  this.numItems = this.io.readU4le()

proc tagContent(this: NavParent2_Tag): NavParent2_Tag_TagChar = 
  if isSome(this.tagContentInst):
    return get(this.tagContentInst)
  let io = this._root.stream
  let pos = io.pos()
  io.seek(this.ofs)
  case this.name
  of "RAHC":
    this.tagContentInst = some(NavParent2_Tag_TagChar.read(io, this.root, this))
  else: discard
  io.seek(pos)
  return get(this.tagContentInst)

proc fromFile*(_: typedesc[NavParent2_Tag], filename: string): NavParent2_Tag =
  NavParent2_Tag.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParent2_Tag_TagChar], io: KaitaiStream, root: KaitaiStruct, parent: NavParent2_Tag): NavParent2_Tag_TagChar =
  template this: untyped = result
  this = new(NavParent2_Tag_TagChar)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.content = convert(this.io.readBytes(int(this.parent.numItems)), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[NavParent2_Tag_TagChar], filename: string): NavParent2_Tag_TagChar =
  NavParent2_Tag_TagChar.read(newKaitaiFileStream(filename), nil, nil)

