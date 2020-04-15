import kaitai_struct_nim_runtime
import options

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

proc tagContent*(this: NavParent2_Tag): NavParent2_Tag_TagChar

proc read*(_: typedesc[NavParent2], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): NavParent2 =
  template this: untyped = result
  this = new(NavParent2)
  let root = if root == nil: cast[NavParent2](this) else: cast[NavParent2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let ofsTagsExpr = this.io.readU4le()
  this.ofsTags = ofsTagsExpr
  let numTagsExpr = this.io.readU4le()
  this.numTags = numTagsExpr
  for i in 0 ..< this.numTags:
    let tagsExpr = NavParent2_Tag.read(this.io, this.root, this)
    this.tags.add(tagsExpr)

proc fromFile*(_: typedesc[NavParent2], filename: string): NavParent2 =
  NavParent2.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParent2_Tag], io: KaitaiStream, root: KaitaiStruct, parent: NavParent2): NavParent2_Tag =
  template this: untyped = result
  this = new(NavParent2_Tag)
  let root = if root == nil: cast[NavParent2](this) else: cast[NavParent2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let nameExpr = encode(this.io.readBytes(int(4)), "ASCII")
  this.name = nameExpr
  let ofsExpr = this.io.readU4le()
  this.ofs = ofsExpr
  let numItemsExpr = this.io.readU4le()
  this.numItems = numItemsExpr

proc tagContent(this: NavParent2_Tag): NavParent2_Tag_TagChar = 
  if isSome(this.tagContentInst):
    return get(this.tagContentInst)
  let io = NavParent2(this.root).io
  let pos = io.pos()
  io.seek(int(this.ofs))
  case this.name
  of "RAHC":
    let tagContentInstExpr = NavParent2_Tag_TagChar.read(io, this.root, this)
    this.tagContentInst = tagContentInstExpr
  else: discard
  io.seek(pos)
  if isSome(this.tagContentInst):
    return get(this.tagContentInst)

proc fromFile*(_: typedesc[NavParent2_Tag], filename: string): NavParent2_Tag =
  NavParent2_Tag.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParent2_Tag_TagChar], io: KaitaiStream, root: KaitaiStruct, parent: NavParent2_Tag): NavParent2_Tag_TagChar =
  template this: untyped = result
  this = new(NavParent2_Tag_TagChar)
  let root = if root == nil: cast[NavParent2](this) else: cast[NavParent2](root)
  this.io = io
  this.root = root
  this.parent = parent

  let contentExpr = encode(this.io.readBytes(int(this.parent.numItems)), "ASCII")
  this.content = contentExpr

proc fromFile*(_: typedesc[NavParent2_Tag_TagChar], filename: string): NavParent2_Tag_TagChar =
  NavParent2_Tag_TagChar.read(newKaitaiFileStream(filename), nil, nil)

