import kaitai_struct_nim_runtime

type
  TypeTernarydummy* = ref TypeTernarydummyObj
  TypeTernarydummyObj* = object
    difWoHack*: Dummy
    difWithHack*: Dummy
    io*: KaitaiStream
    root*: TypeTernary
    parent*: ref RootObj
    rawDifWoHack*: string
    rawDifWithHack*: string
    rawRawDifWithHack*: string
  TypeTernary* = ref TypeTernaryObj
  TypeTernaryObj* = object
    difWoHack*: Dummy
    difWithHack*: Dummy
    io*: KaitaiStream
    root*: TypeTernary
    parent*: ref RootObj
    rawDifWoHack*: string
    rawDifWithHack*: string
    rawRawDifWithHack*: string

### TypeTernarydummy ###
proc read*(_: typedesc[TypeTernarydummy], io: KaitaiStream, root: TypeTernary, parent: TypeTernary): TypeTernarydummy =
  result = new(TypeTernarydummy)
  let root = if root == nil: cast[TypeTernary](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.value = result.io.readU1()

proc fromFile*(_: typedesc[TypeTernarydummy], filename: string): TypeTernarydummy =
  TypeTernarydummy.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TypeTernarydummyObj) =
  close(x.io)

### TypeTernary ###
proc read*(_: typedesc[TypeTernary], io: KaitaiStream, root: TypeTernary, parent: ref RootObj): TypeTernary =
  result = new(TypeTernary)
  let root = if root == nil: cast[TypeTernary](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  if not(isHack):
    result.rawDifWoHack = result.io.readBytes(1)
    rawDifWoHackIo = newKaitaiStringStream(rawDifWoHack)
    result.difWoHack = Dummy.read(rawDifWoHackIo, result, root)
  result.rawRawDifWithHack = result.io.readBytes(1)
  result.rawDifWithHack = rawRawDifWithHack.processXor(3)
  rawDifWithHackIo = newKaitaiStringStream(rawDifWithHack)
  result.difWithHack = Dummy.read(rawDifWithHackIo, result, root)

proc fromFile*(_: typedesc[TypeTernary], filename: string): TypeTernary =
  TypeTernary.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TypeTernaryObj) =
  close(x.io)

