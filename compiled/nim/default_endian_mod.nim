import ../../runtime/nim/kaitai



type
  Subnest* = ref SubnestObj
  SubnestObj* = object
    io: KaitaiStream
    root*: DefaultEndianMod
    parent*: MainObj
    two*: int32
  SubnestBe* = ref SubnestBeObj
  SubnestBeObj* = object
    io: KaitaiStream
    root*: DefaultEndianMod
    parent*: MainObj
    two*: int32
  MainObj* = ref MainObjObj
  MainObjObj* = object
    io: KaitaiStream
    root*: DefaultEndianMod
    parent*: DefaultEndianMod
    one*: int32
    nest*: Subnest
    nestBe*: SubnestBe
  DefaultEndianMod* = ref DefaultEndianModObj
  DefaultEndianModObj* = object
    io: KaitaiStream
    root*: DefaultEndianMod
    parent*: ref RootObj
    main*: MainObj

# Subnest
proc read*(_: typedesc[Subnest], io: KaitaiStream, root: DefaultEndianMod, parent: MainObj): owned Subnest =
  result = new(Subnest)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.two = readS4le(io)


proc fromFile*(_: typedesc[Subnest], filename: string): owned Subnest =
  Subnest.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var SubnestObj) =
  close(x.io)

# SubnestBe
proc read*(_: typedesc[SubnestBe], io: KaitaiStream, root: DefaultEndianMod, parent: MainObj): owned SubnestBe =
  result = new(SubnestBe)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.two = readS4be(io)


proc fromFile*(_: typedesc[SubnestBe], filename: string): owned SubnestBe =
  SubnestBe.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var SubnestBeObj) =
  close(x.io)

# MainObj
proc read*(_: typedesc[MainObj], io: KaitaiStream, root: DefaultEndianMod, parent: DefaultEndianMod): owned MainObj =
  result = new(MainObj)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.one = readS4le(io)
  result.nest = Subnest.read(io, root, result)
  result.nestBe = SubnestBe.read(io, root, result)


proc fromFile*(_: typedesc[MainObj], filename: string): owned MainObj =
  MainObj.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var MainObjObj) =
  close(x.io)

# DefaultEndianMod
proc read*(_: typedesc[DefaultEndianMod], io: KaitaiStream, root: DefaultEndianMod, parent: ref RootObj): owned DefaultEndianMod =
  result = new(DefaultEndianMod)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.main = MainObj.read(io, root, result)


proc fromFile*(_: typedesc[DefaultEndianMod], filename: string): owned DefaultEndianMod =
  DefaultEndianMod.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianModObj) =
  close(x.io)

