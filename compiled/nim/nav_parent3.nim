import kaitai_struct_nim_runtime
import options
import encodings

type
  NavParent3_Tag_TagChar* = ref NavParent3_Tag_TagCharObj
  NavParent3_Tag_TagCharObj* = object
    content*: string
    io*: KaitaiStream
    root*: NavParent3
    parent*: NavParent3_Tag
  NavParent3_Tag* = ref NavParent3_TagObj
  NavParent3_TagObj* = object
    name*: string
    ofs*: uint32
    numItems*: uint32
    io*: KaitaiStream
    root*: NavParent3
    parent*: NavParent3
    tagContentInst*: Option[NavParent3_Tag_TagChar]
  NavParent3* = ref NavParent3Obj
  NavParent3Obj* = object
    ofsTags*: uint32
    numTags*: uint32
    io*: KaitaiStream
    root*: NavParent3
    parent*: ref RootObj
    tagsInst*: Option[seq[NavParent3_Tag]]

## NavParent3_Tag_TagChar
proc read*(_: typedesc[NavParent3_Tag_TagChar], io: KaitaiStream, root: NavParent3, parent: NavParent3_Tag): NavParent3_Tag_TagChar =
  let this = new(NavParent3_Tag_TagChar)
  let root = if root == nil: cast[NavParent3](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.content = convert(this.io.readBytes(int(this.parent.numItems)), srcEncoding = "ASCII")
  result = this

proc fromFile*(_: typedesc[NavParent3_Tag_TagChar], filename: string): NavParent3_Tag_TagChar =
  NavParent3_Tag_TagChar.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParent3_Tag_TagCharObj) =
  close(x.io)

## NavParent3_Tag
proc tagContent*(this: NavParent3_Tag): NavParent3_Tag_TagChar
proc tagContent(this: NavParent3_Tag): NavParent3_Tag_TagChar = 
  if isSome(this.tagContentInst):
    return get(this.tagContentInst)
  let io = this._root.stream
  let pos = io.pos()
  io.seek(this.ofs)
  case this.name
  of "RAHC":
    this.tagContentInst = some(NavParent3_Tag_TagChar.read(io, this.root, this))
  io.seek(pos)
  return get(this.tagContentInst)

proc read*(_: typedesc[NavParent3_Tag], io: KaitaiStream, root: NavParent3, parent: NavParent3): NavParent3_Tag =
  let this = new(NavParent3_Tag)
  let root = if root == nil: cast[NavParent3](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.name = convert(this.io.readBytes(int(4)), srcEncoding = "ASCII")
  this.ofs = this.io.readU4le()
  this.numItems = this.io.readU4le()
  result = this

proc fromFile*(_: typedesc[NavParent3_Tag], filename: string): NavParent3_Tag =
  NavParent3_Tag.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParent3_TagObj) =
  close(x.io)

## NavParent3
proc tags*(this: NavParent3): seq[NavParent3_Tag]
proc tags(this: NavParent3): seq[NavParent3_Tag] = 
  if isSome(this.tagsInst):
    return get(this.tagsInst)
  let pos = this.io.pos()
  this.io.seek(this.ofsTags)
  tagsInst = newSeq[NavParent3_Tag](this.numTags)
  for i in 0 ..< this.numTags:
    this.tagsInst.add(NavParent3_Tag.read(this.io, this.root, this))
  this.io.seek(pos)
  return get(this.tagsInst)

proc read*(_: typedesc[NavParent3], io: KaitaiStream, root: NavParent3, parent: ref RootObj): NavParent3 =
  let this = new(NavParent3)
  let root = if root == nil: cast[NavParent3](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.ofsTags = this.io.readU4le()
  this.numTags = this.io.readU4le()
  result = this

proc fromFile*(_: typedesc[NavParent3], filename: string): NavParent3 =
  NavParent3.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParent3Obj) =
  close(x.io)

