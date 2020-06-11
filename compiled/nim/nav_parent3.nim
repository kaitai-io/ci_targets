import kaitai_struct_nim_runtime
import options

type
  NavParent3* = ref object of KaitaiStruct
    `ofsTags`*: uint32
    `numTags`*: uint32
    `parent`*: KaitaiStruct
    `tagsInst`*: seq[NavParent3_Tag]
  NavParent3_Tag* = ref object of KaitaiStruct
    `name`*: string
    `ofs`*: uint32
    `numItems`*: uint32
    `parent`*: NavParent3
    `tagContentInst`*: NavParent3_Tag_TagChar
  NavParent3_Tag_TagChar* = ref object of KaitaiStruct
    `content`*: string
    `parent`*: NavParent3_Tag

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

  let ofsTagsExpr = this.io.readU4le()
  this.ofsTags = ofsTagsExpr
  let numTagsExpr = this.io.readU4le()
  this.numTags = numTagsExpr

proc tags(this: NavParent3): seq[NavParent3_Tag] = 
  if this.tagsInst.len != 0:
    return this.tagsInst
  let pos = this.io.pos()
  this.io.seek(int(this.ofsTags))
  for i in 0 ..< int(this.numTags):
    let it = NavParent3_Tag.read(this.io, this.root, this)
    this.tagsInst.add(it)
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

  let nameExpr = encode(this.io.readBytes(int(4)), "ASCII")
  this.name = nameExpr
  let ofsExpr = this.io.readU4le()
  this.ofs = ofsExpr
  let numItemsExpr = this.io.readU4le()
  this.numItems = numItemsExpr

proc tagContent(this: NavParent3_Tag): NavParent3_Tag_TagChar = 
  if this.tagContentInst != nil:
    return this.tagContentInst
  let io = NavParent3(this.root).io
  let pos = io.pos()
  io.seek(int(this.ofs))
  block:
    let on = this.name
    if on == "RAHC":
      let tagContentInstExpr = NavParent3_Tag_TagChar.read(io, this.root, this)
      this.tagContentInst = tagContentInstExpr
  io.seek(pos)
  if this.tagContentInst != nil:
    return this.tagContentInst

proc fromFile*(_: typedesc[NavParent3_Tag], filename: string): NavParent3_Tag =
  NavParent3_Tag.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[NavParent3_Tag_TagChar], io: KaitaiStream, root: KaitaiStruct, parent: NavParent3_Tag): NavParent3_Tag_TagChar =
  template this: untyped = result
  this = new(NavParent3_Tag_TagChar)
  let root = if root == nil: cast[NavParent3](this) else: cast[NavParent3](root)
  this.io = io
  this.root = root
  this.parent = parent

  let contentExpr = encode(this.io.readBytes(int(this.parent.numItems)), "ASCII")
  this.content = contentExpr

proc fromFile*(_: typedesc[NavParent3_Tag_TagChar], filename: string): NavParent3_Tag_TagChar =
  NavParent3_Tag_TagChar.read(newKaitaiFileStream(filename), nil, nil)

