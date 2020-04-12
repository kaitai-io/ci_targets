import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  NavParent3* = ref object of KaitaiStruct
    ofsTags*: uint32
    numTags*: uint32
    parent*: KaitaiStruct
    tagsInst*: seq[NavParent3_Tag]
  NavParent3_Tag* = ref object of KaitaiStruct
    name*: string
    ofs*: uint32
    numItems*: uint32
    parent*: NavParent3
    tagContentInst*: Option[NavParent3_Tag_TagChar]
  NavParent3_Tag_TagChar* = ref object of KaitaiStruct
    content*: string
    parent*: NavParent3_Tag

proc read*(_: typedesc[NavParent3], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParent3
proc read*(_: typedesc[NavParent3_Tag], io: KaitaiStream, root: KaitaiStruct, parent: NavParent3): NavParent3_Tag
proc read*(_: typedesc[NavParent3_Tag_TagChar], io: KaitaiStream, root: KaitaiStruct, parent: NavParent3_Tag): NavParent3_Tag_TagChar

proc tags*(this: NavParent3): seq[NavParent3_Tag]
proc tagContent*(this: NavParent3_Tag): NavParent3_Tag_TagChar

proc read*(_: typedesc[NavParent3], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParent3 =
  template this: untyped = result
  this = new(NavParent3)
  let root = if root == nil: cast[NavParent3](this) else: cast[NavParent3](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.ofsTags = this.io.readU4le()
  this.numTags = this.io.readU4le()

proc tags(this: NavParent3): seq[NavParent3_Tag] = 
  if this.tagsInst.len != 0:
    return this.tagsInst
  let pos = this.io.pos()
  this.io.seek(int(this.ofsTags))
  for i in 0 ..< this.numTags:
    this.tagsInst.add(NavParent3_Tag.read(this.io, this.root, this))
  this.io.seek(pos)
  if this.tagsInst.len != 0:
    return this.tagsInst

proc fromFile*(_: typedesc[NavParent3], filename: string): NavParent3 =
  NavParent3.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParent3_Tag], io: KaitaiStream, root: KaitaiStruct, parent: NavParent3): NavParent3_Tag =
  template this: untyped = result
  this = new(NavParent3_Tag)
  let root = if root == nil: cast[NavParent3](this) else: cast[NavParent3](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.name = convert(this.io.readBytes(int(4)), srcEncoding = "ASCII")
  this.ofs = this.io.readU4le()
  this.numItems = this.io.readU4le()

proc tagContent(this: NavParent3_Tag): NavParent3_Tag_TagChar = 
  if isSome(this.tagContentInst):
    return get(this.tagContentInst)
  let io = NavParent3(this.root).io
  let pos = io.pos()
  io.seek(int(this.ofs))
  case this.name
  of "RAHC":
    this.tagContentInst = NavParent3_Tag_TagChar.read(io, this.root, this)
  else: discard
  io.seek(pos)
  if isSome(this.tagContentInst):
    return get(this.tagContentInst)

proc fromFile*(_: typedesc[NavParent3_Tag], filename: string): NavParent3_Tag =
  NavParent3_Tag.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParent3_Tag_TagChar], io: KaitaiStream, root: KaitaiStruct, parent: NavParent3_Tag): NavParent3_Tag_TagChar =
  template this: untyped = result
  this = new(NavParent3_Tag_TagChar)
  let root = if root == nil: cast[NavParent3](this) else: cast[NavParent3](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.content = convert(this.io.readBytes(int(this.parent.numItems)), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[NavParent3_Tag_TagChar], filename: string): NavParent3_Tag_TagChar =
  NavParent3_Tag_TagChar.read(newKaitaiFileStream(filename), nil, nil)

