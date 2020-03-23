import kaitai_struct_nim_runtime
import encodings

type
  NavRootheaderObj* = ref NavRootheaderObjObj
  NavRootheaderObjObj* = object
    header*: HeaderObj
    index*: IndexObj
    io*: KaitaiStream
    root*: NavRoot
    parent*: ref RootObj
  NavRootindexObj* = ref NavRootindexObjObj
  NavRootindexObjObj* = object
    header*: HeaderObj
    index*: IndexObj
    io*: KaitaiStream
    root*: NavRoot
    parent*: ref RootObj
  NavRootentry* = ref NavRootentryObj
  NavRootentryObj* = object
    header*: HeaderObj
    index*: IndexObj
    io*: KaitaiStream
    root*: NavRoot
    parent*: ref RootObj
  NavRoot* = ref NavRootObj
  NavRootObj* = object
    header*: HeaderObj
    index*: IndexObj
    io*: KaitaiStream
    root*: NavRoot
    parent*: ref RootObj

### NavRootheaderObj ###
proc read*(_: typedesc[NavRootheaderObj], io: KaitaiStream, root: NavRoot, parent: NavRoot): NavRootheaderObj =
  result = new(NavRootheaderObj)
  let root = if root == nil: cast[NavRoot](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.qtyEntries = result.io.readU4le()
  result.filenameLen = result.io.readU4le()

proc fromFile*(_: typedesc[NavRootheaderObj], filename: string): NavRootheaderObj =
  NavRootheaderObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavRootheaderObjObj) =
  close(x.io)

### NavRootindexObj ###
proc read*(_: typedesc[NavRootindexObj], io: KaitaiStream, root: NavRoot, parent: NavRoot): NavRootindexObj =
  result = new(NavRootindexObj)
  let root = if root == nil: cast[NavRoot](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.magic = result.io.readBytes(4)
  entries = newSeq[Entry](_root.header.qtyEntries)
  for i in 0 ..< _root.header.qtyEntries:
    result.entries.add(Entry.read(result.io, result, root))

proc fromFile*(_: typedesc[NavRootindexObj], filename: string): NavRootindexObj =
  NavRootindexObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavRootindexObjObj) =
  close(x.io)

### NavRootentry ###
proc read*(_: typedesc[NavRootentry], io: KaitaiStream, root: NavRoot, parent: NavRootindexObj): NavRootentry =
  result = new(NavRootentry)
  let root = if root == nil: cast[NavRoot](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.filename = convert(result.io.readBytes(_root.header.filenameLen), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[NavRootentry], filename: string): NavRootentry =
  NavRootentry.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavRootentryObj) =
  close(x.io)

### NavRoot ###
proc read*(_: typedesc[NavRoot], io: KaitaiStream, root: NavRoot, parent: ref RootObj): NavRoot =
  result = new(NavRoot)
  let root = if root == nil: cast[NavRoot](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.header = HeaderObj.read(result.io, result, root)
  result.index = IndexObj.read(result.io, result, root)

proc fromFile*(_: typedesc[NavRoot], filename: string): NavRoot =
  NavRoot.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var NavRootObj) =
  close(x.io)

