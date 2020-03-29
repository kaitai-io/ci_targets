import kaitai_struct_nim_runtime

type
  TypeTernary_Dummy* = ref TypeTernary_DummyObj
  TypeTernary_DummyObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: TypeTernary
    parent*: TypeTernary
  TypeTernary* = ref TypeTernaryObj
  TypeTernaryObj* = object
    difWoHack*: TypeTernary_Dummy
    difWithHack*: TypeTernary_Dummy
    io*: KaitaiStream
    root*: TypeTernary
    parent*: ref RootObj
    rawDifWoHack*: string
    rawDifWithHack*: string
    rawRawDifWithHack*: string

### TypeTernary_Dummy ###
proc read*(_: typedesc[TypeTernary_Dummy], io: KaitaiStream, root: TypeTernary, parent: TypeTernary): TypeTernary_Dummy =
  result = new(TypeTernary_Dummy)
  let root = if root == nil: cast[TypeTernary](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let value = io.readU1()
  result.value = value

proc fromFile*(_: typedesc[TypeTernary_Dummy], filename: string): TypeTernary_Dummy =
  TypeTernary_Dummy.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TypeTernary_DummyObj) =
  close(x.io)

### TypeTernary ###
proc read*(_: typedesc[TypeTernary], io: KaitaiStream, root: TypeTernary, parent: ref RootObj): TypeTernary =
  result = new(TypeTernary)
  let root = if root == nil: cast[TypeTernary](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  if not(isHack):
    let rawDifWoHack = io.readBytes(int(1))
    result.rawDifWoHack = rawDifWoHack
    let rawDifWoHackIo = newKaitaiStringStream(rawDifWoHack)
    let difWoHack = TypeTernary_Dummy.read(rawDifWoHackIo, result, root)
    result.difWoHack = difWoHack
  let rawRawDifWithHack = io.readBytes(int(1))
  result.rawRawDifWithHack = rawRawDifWithHack
  let rawDifWithHack = rawRawDifWithHack.processXor(3)
  result.rawDifWithHack = rawDifWithHack
  let rawDifWithHackIo = newKaitaiStringStream(rawDifWithHack)
  let difWithHack = TypeTernary_Dummy.read(rawDifWithHackIo, result, root)
  result.difWithHack = difWithHack

proc fromFile*(_: typedesc[TypeTernary], filename: string): TypeTernary =
  TypeTernary.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TypeTernaryObj) =
  close(x.io)

