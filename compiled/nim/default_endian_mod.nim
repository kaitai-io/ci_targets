import kaitai_struct_nim_runtime

type
  DefaultEndianModmainObjsubnest* = ref DefaultEndianModmainObjsubnestObj
  DefaultEndianModmainObjsubnestObj* = object
    main*: MainObj
    io*: KaitaiStream
    root*: DefaultEndianMod
    parent*: ref RootObj
  DefaultEndianModmainObjsubnestBe* = ref DefaultEndianModmainObjsubnestBeObj
  DefaultEndianModmainObjsubnestBeObj* = object
    main*: MainObj
    io*: KaitaiStream
    root*: DefaultEndianMod
    parent*: ref RootObj
  DefaultEndianModmainObj* = ref DefaultEndianModmainObjObj
  DefaultEndianModmainObjObj* = object
    main*: MainObj
    io*: KaitaiStream
    root*: DefaultEndianMod
    parent*: ref RootObj
  DefaultEndianMod* = ref DefaultEndianModObj
  DefaultEndianModObj* = object
    main*: MainObj
    io*: KaitaiStream
    root*: DefaultEndianMod
    parent*: ref RootObj

### DefaultEndianModmainObjsubnest ###
proc read*(_: typedesc[DefaultEndianModmainObjsubnest], io: KaitaiStream, root: DefaultEndianMod, parent: DefaultEndianModmainObj): DefaultEndianModmainObjsubnest =
  result = new(DefaultEndianModmainObjsubnest)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.two = result.io.readS4le()

proc fromFile*(_: typedesc[DefaultEndianModmainObjsubnest], filename: string): DefaultEndianModmainObjsubnest =
  DefaultEndianModmainObjsubnest.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianModmainObjsubnestObj) =
  close(x.io)

### DefaultEndianModmainObjsubnestBe ###
proc read*(_: typedesc[DefaultEndianModmainObjsubnestBe], io: KaitaiStream, root: DefaultEndianMod, parent: DefaultEndianModmainObj): DefaultEndianModmainObjsubnestBe =
  result = new(DefaultEndianModmainObjsubnestBe)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.two = result.io.readS4be()

proc fromFile*(_: typedesc[DefaultEndianModmainObjsubnestBe], filename: string): DefaultEndianModmainObjsubnestBe =
  DefaultEndianModmainObjsubnestBe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianModmainObjsubnestBeObj) =
  close(x.io)

### DefaultEndianModmainObj ###
proc read*(_: typedesc[DefaultEndianModmainObj], io: KaitaiStream, root: DefaultEndianMod, parent: DefaultEndianMod): DefaultEndianModmainObj =
  result = new(DefaultEndianModmainObj)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = result.io.readS4le()
  result.nest = Subnest.read(result.io, result, root)
  result.nestBe = SubnestBe.read(result.io, result, root)

proc fromFile*(_: typedesc[DefaultEndianModmainObj], filename: string): DefaultEndianModmainObj =
  DefaultEndianModmainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianModmainObjObj) =
  close(x.io)

### DefaultEndianMod ###
proc read*(_: typedesc[DefaultEndianMod], io: KaitaiStream, root: DefaultEndianMod, parent: ref RootObj): DefaultEndianMod =
  result = new(DefaultEndianMod)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.main = MainObj.read(result.io, result, root)

proc fromFile*(_: typedesc[DefaultEndianMod], filename: string): DefaultEndianMod =
  DefaultEndianMod.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianModObj) =
  close(x.io)

