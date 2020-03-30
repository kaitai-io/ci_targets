import kaitai_struct_nim_runtime
import options
import encodings

type
  NavRoot_HeaderObj* = ref NavRoot_HeaderObjObj
  NavRoot_HeaderObjObj* = object
    qtyEntries*: uint32
    filenameLen*: uint32
    io*: KaitaiStream
    root*: NavRoot
    parent*: NavRoot
  NavRoot_IndexObj* = ref NavRoot_IndexObjObj
  NavRoot_IndexObjObj* = object
    magic*: string
    entries*: seq[NavRoot_Entry]
    io*: KaitaiStream
    root*: NavRoot
    parent*: NavRoot
  NavRoot_Entry* = ref NavRoot_EntryObj
  NavRoot_EntryObj* = object
    filename*: string
    io*: KaitaiStream
    root*: NavRoot
    parent*: NavRoot_IndexObj
  NavRoot* = ref NavRootObj
  NavRootObj* = object
    header*: NavRoot_HeaderObj
    index*: NavRoot_IndexObj
    io*: KaitaiStream
    root*: NavRoot
    parent*: ref RootObj

## NavRoot_HeaderObj
proc read*(_: typedesc[NavRoot_HeaderObj], io: KaitaiStream, root: NavRoot, parent: NavRoot): NavRoot_HeaderObj =
  let this = new(NavRoot_HeaderObj)
  let root = if root == nil: cast[NavRoot](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.qtyEntries = this.io.readU4le()
  this.filenameLen = this.io.readU4le()
  result = this

proc fromFile*(_: typedesc[NavRoot_HeaderObj], filename: string): NavRoot_HeaderObj =
  NavRoot_HeaderObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavRoot_HeaderObjObj) =
  close(x.io)

## NavRoot_IndexObj
proc read*(_: typedesc[NavRoot_IndexObj], io: KaitaiStream, root: NavRoot, parent: NavRoot): NavRoot_IndexObj =
  let this = new(NavRoot_IndexObj)
  let root = if root == nil: cast[NavRoot](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.magic = this.io.readBytes(int(4))
  entries = newSeq[NavRoot_Entry](this._root.header.qtyEntries)
  for i in 0 ..< this._root.header.qtyEntries:
    this.entries.add(NavRoot_Entry.read(this.io, this.root, this))
  result = this

proc fromFile*(_: typedesc[NavRoot_IndexObj], filename: string): NavRoot_IndexObj =
  NavRoot_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavRoot_IndexObjObj) =
  close(x.io)

## NavRoot_Entry
proc read*(_: typedesc[NavRoot_Entry], io: KaitaiStream, root: NavRoot, parent: NavRoot_IndexObj): NavRoot_Entry =
  let this = new(NavRoot_Entry)
  let root = if root == nil: cast[NavRoot](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.filename = convert(this.io.readBytes(int(this._root.header.filenameLen)), srcEncoding = "UTF-8")
  result = this

proc fromFile*(_: typedesc[NavRoot_Entry], filename: string): NavRoot_Entry =
  NavRoot_Entry.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavRoot_EntryObj) =
  close(x.io)

## NavRoot
proc read*(_: typedesc[NavRoot], io: KaitaiStream, root: NavRoot, parent: ref RootObj): NavRoot =
  let this = new(NavRoot)
  let root = if root == nil: cast[NavRoot](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.header = NavRoot_HeaderObj.read(this.io, this.root, this)
  this.index = NavRoot_IndexObj.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[NavRoot], filename: string): NavRoot =
  NavRoot.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavRootObj) =
  close(x.io)

