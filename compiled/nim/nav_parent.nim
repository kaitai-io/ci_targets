import kaitai_struct_nim_runtime
import options
import encodings

type
  NavParent_HeaderObj* = ref NavParent_HeaderObjObj
  NavParent_HeaderObjObj* = object
    qtyEntries*: uint32
    filenameLen*: uint32
    io*: KaitaiStream
    root*: NavParent
    parent*: NavParent
  NavParent_IndexObj* = ref NavParent_IndexObjObj
  NavParent_IndexObjObj* = object
    magic*: string
    entries*: seq[NavParent_Entry]
    io*: KaitaiStream
    root*: NavParent
    parent*: NavParent
  NavParent_Entry* = ref NavParent_EntryObj
  NavParent_EntryObj* = object
    filename*: string
    io*: KaitaiStream
    root*: NavParent
    parent*: NavParent_IndexObj
  NavParent* = ref NavParentObj
  NavParentObj* = object
    header*: NavParent_HeaderObj
    index*: NavParent_IndexObj
    io*: KaitaiStream
    root*: NavParent
    parent*: ref RootObj

### NavParent_HeaderObj ###
proc read*(_: typedesc[NavParent_HeaderObj], io: KaitaiStream, root: NavParent, parent: NavParent): NavParent_HeaderObj =
  let this = new(NavParent_HeaderObj)
  let root = if root == nil: cast[NavParent](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let qtyEntries = this.io.readU4le()
  this.qtyEntries = qtyEntries
  let filenameLen = this.io.readU4le()
  this.filenameLen = filenameLen
  result = this

proc fromFile*(_: typedesc[NavParent_HeaderObj], filename: string): NavParent_HeaderObj =
  NavParent_HeaderObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParent_HeaderObjObj) =
  close(x.io)

### NavParent_IndexObj ###
proc read*(_: typedesc[NavParent_IndexObj], io: KaitaiStream, root: NavParent, parent: NavParent): NavParent_IndexObj =
  let this = new(NavParent_IndexObj)
  let root = if root == nil: cast[NavParent](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let magic = this.io.readBytes(int(4))
  this.magic = magic
  entries = newSeq[NavParent_Entry](parent.this.header.this.qtyEntries)
  for i in 0 ..< parent.this.header.this.qtyEntries:
    this.entries.add(NavParent_Entry.read(this.io, this.root, this))
  result = this

proc fromFile*(_: typedesc[NavParent_IndexObj], filename: string): NavParent_IndexObj =
  NavParent_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParent_IndexObjObj) =
  close(x.io)

### NavParent_Entry ###
proc read*(_: typedesc[NavParent_Entry], io: KaitaiStream, root: NavParent, parent: NavParent_IndexObj): NavParent_Entry =
  let this = new(NavParent_Entry)
  let root = if root == nil: cast[NavParent](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let filename = convert(this.io.readBytes(int(parent.parent.this.header.this.filenameLen)), srcEncoding = "UTF-8")
  this.filename = filename
  result = this

proc fromFile*(_: typedesc[NavParent_Entry], filename: string): NavParent_Entry =
  NavParent_Entry.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParent_EntryObj) =
  close(x.io)

### NavParent ###
proc read*(_: typedesc[NavParent], io: KaitaiStream, root: NavParent, parent: ref RootObj): NavParent =
  let this = new(NavParent)
  let root = if root == nil: cast[NavParent](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let header = NavParent_HeaderObj.read(this.io, this.root, this)
  this.header = header
  let index = NavParent_IndexObj.read(this.io, this.root, this)
  this.index = index
  result = this

proc fromFile*(_: typedesc[NavParent], filename: string): NavParent =
  NavParent.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavParentObj) =
  close(x.io)

