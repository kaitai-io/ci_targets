import kaitai_struct_nim_runtime
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

### NavRoot_HeaderObj ###
proc read*(_: typedesc[NavRoot_HeaderObj], io: KaitaiStream, root: NavRoot, parent: NavRoot): NavRoot_HeaderObj =
  result = new(NavRoot_HeaderObj)
  let root = if root == nil: cast[NavRoot](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let qtyEntries = io.readU4le()
  result.qtyEntries = qtyEntries
  let filenameLen = io.readU4le()
  result.filenameLen = filenameLen

proc fromFile*(_: typedesc[NavRoot_HeaderObj], filename: string): NavRoot_HeaderObj =
  NavRoot_HeaderObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavRoot_HeaderObjObj) =
  close(x.io)

### NavRoot_IndexObj ###
proc read*(_: typedesc[NavRoot_IndexObj], io: KaitaiStream, root: NavRoot, parent: NavRoot): NavRoot_IndexObj =
  result = new(NavRoot_IndexObj)
  let root = if root == nil: cast[NavRoot](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let magic = io.readBytes(int(4))
  result.magic = magic
  entries = newSeq[NavRoot_Entry](_root.header.qtyEntries)
  for i in 0 ..< _root.header.qtyEntries:
    entries.add(NavRoot_Entry.read(io, result, root))

proc fromFile*(_: typedesc[NavRoot_IndexObj], filename: string): NavRoot_IndexObj =
  NavRoot_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavRoot_IndexObjObj) =
  close(x.io)

### NavRoot_Entry ###
proc read*(_: typedesc[NavRoot_Entry], io: KaitaiStream, root: NavRoot, parent: NavRoot_IndexObj): NavRoot_Entry =
  result = new(NavRoot_Entry)
  let root = if root == nil: cast[NavRoot](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let filename = convert(io.readBytes(int(_root.header.filenameLen)), srcEncoding = "UTF-8")
  result.filename = filename

proc fromFile*(_: typedesc[NavRoot_Entry], filename: string): NavRoot_Entry =
  NavRoot_Entry.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavRoot_EntryObj) =
  close(x.io)

### NavRoot ###
proc read*(_: typedesc[NavRoot], io: KaitaiStream, root: NavRoot, parent: ref RootObj): NavRoot =
  result = new(NavRoot)
  let root = if root == nil: cast[NavRoot](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let header = NavRoot_HeaderObj.read(io, result, root)
  result.header = header
  let index = NavRoot_IndexObj.read(io, result, root)
  result.index = index

proc fromFile*(_: typedesc[NavRoot], filename: string): NavRoot =
  NavRoot.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavRootObj) =
  close(x.io)

