import kaitai_struct_nim_runtime
import options
import encodings

type
  NavParent2_Tag_TagChar* = ref NavParent2_Tag_TagCharObj
  NavParent2_Tag_TagCharObj* = object
    content*: string
    io*: KaitaiStream
    root*: NavParent2
    parent*: NavParent2_Tag
  NavParent2_Tag* = ref NavParent2_TagObj
  NavParent2_TagObj* = object
    name*: string
    ofs*: uint32
    numItems*: uint32
    io*: KaitaiStream
    root*: NavParent2
    parent*: NavParent2
    tagContentInst*: Option[NavParent2_Tag_TagChar]
  NavParent2* = ref NavParent2Obj
  NavParent2Obj* = object
    ofsTags*: uint32
    numTags*: uint32
    tags*: seq[NavParent2_Tag]
    io*: KaitaiStream
    root*: NavParent2
    parent*: ref RootObj

### NavParent2_Tag_TagChar ###
proc read*(_: typedesc[NavParent2_Tag_TagChar], io: KaitaiStream, root: NavParent2, parent: NavParent2_Tag): NavParent2_Tag_TagChar =
  let this = new(NavParent2_Tag_TagChar)
  let root = if root == nil: cast[NavParent2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let content = convert(this.io.readBytes(int(parent.this.numItems)), srcEncoding = "ASCII")
  this.content = content
  result = this

proc fromFile*(_: typedesc[NavParent2_Tag_TagChar], filename: string): NavParent2_Tag_TagChar =
  NavParent2_Tag_TagChar.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParent2_Tag_TagCharObj) =
  close(x.io)

### NavParent2_Tag ###
proc tagContent*(this: NavParent2_Tag): NavParent2_Tag_TagChar
proc tagContent(this: NavParent2_Tag): NavParent2_Tag_TagChar = 
  if isSome(this.tagContentInst):
    return get(this.tagContentInst)
  let io = this._root.stream
  let pos = io.pos()
  io.seek(this.ofs)
  let tagContentInst = NavParent2_Tag_TagChar.read(io, this.root, this)
  this.tagContentInst = some(tagContentInst)
  io.seek(pos)
  return get(this.tagContentInst)

proc read*(_: typedesc[NavParent2_Tag], io: KaitaiStream, root: NavParent2, parent: NavParent2): NavParent2_Tag =
  let this = new(NavParent2_Tag)
  let root = if root == nil: cast[NavParent2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let name = convert(this.io.readBytes(int(4)), srcEncoding = "ASCII")
  this.name = name
  let ofs = this.io.readU4le()
  this.ofs = ofs
  let numItems = this.io.readU4le()
  this.numItems = numItems
  result = this

proc fromFile*(_: typedesc[NavParent2_Tag], filename: string): NavParent2_Tag =
  NavParent2_Tag.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParent2_TagObj) =
  close(x.io)

### NavParent2 ###
proc read*(_: typedesc[NavParent2], io: KaitaiStream, root: NavParent2, parent: ref RootObj): NavParent2 =
  let this = new(NavParent2)
  let root = if root == nil: cast[NavParent2](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let ofsTags = this.io.readU4le()
  this.ofsTags = ofsTags
  let numTags = this.io.readU4le()
  this.numTags = numTags
  tags = newSeq[NavParent2_Tag](this.numTags)
  for i in 0 ..< this.numTags:
    this.tags.add(NavParent2_Tag.read(this.io, this.root, this))
  result = this

proc fromFile*(_: typedesc[NavParent2], filename: string): NavParent2 =
  NavParent2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParent2Obj) =
  close(x.io)

