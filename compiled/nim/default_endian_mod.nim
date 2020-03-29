import kaitai_struct_nim_runtime

type
  DefaultEndianMod_MainObj_Subnest* = ref DefaultEndianMod_MainObj_SubnestObj
  DefaultEndianMod_MainObj_SubnestObj* = object
    two*: int32
    io*: KaitaiStream
    root*: DefaultEndianMod
    parent*: DefaultEndianMod_MainObj
  DefaultEndianMod_MainObj_SubnestBe* = ref DefaultEndianMod_MainObj_SubnestBeObj
  DefaultEndianMod_MainObj_SubnestBeObj* = object
    two*: int32
    io*: KaitaiStream
    root*: DefaultEndianMod
    parent*: DefaultEndianMod_MainObj
  DefaultEndianMod_MainObj* = ref DefaultEndianMod_MainObjObj
  DefaultEndianMod_MainObjObj* = object
    one*: int32
    nest*: DefaultEndianMod_MainObj_Subnest
    nestBe*: DefaultEndianMod_MainObj_SubnestBe
    io*: KaitaiStream
    root*: DefaultEndianMod
    parent*: DefaultEndianMod
  DefaultEndianMod* = ref DefaultEndianModObj
  DefaultEndianModObj* = object
    main*: DefaultEndianMod_MainObj
    io*: KaitaiStream
    root*: DefaultEndianMod
    parent*: ref RootObj

### DefaultEndianMod_MainObj_Subnest ###
proc read*(_: typedesc[DefaultEndianMod_MainObj_Subnest], io: KaitaiStream, root: DefaultEndianMod, parent: DefaultEndianMod_MainObj): DefaultEndianMod_MainObj_Subnest =
  result = new(DefaultEndianMod_MainObj_Subnest)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let two = io.readS4le()
  result.two = two

proc fromFile*(_: typedesc[DefaultEndianMod_MainObj_Subnest], filename: string): DefaultEndianMod_MainObj_Subnest =
  DefaultEndianMod_MainObj_Subnest.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianMod_MainObj_SubnestObj) =
  close(x.io)

### DefaultEndianMod_MainObj_SubnestBe ###
proc read*(_: typedesc[DefaultEndianMod_MainObj_SubnestBe], io: KaitaiStream, root: DefaultEndianMod, parent: DefaultEndianMod_MainObj): DefaultEndianMod_MainObj_SubnestBe =
  result = new(DefaultEndianMod_MainObj_SubnestBe)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let two = io.readS4be()
  result.two = two

proc fromFile*(_: typedesc[DefaultEndianMod_MainObj_SubnestBe], filename: string): DefaultEndianMod_MainObj_SubnestBe =
  DefaultEndianMod_MainObj_SubnestBe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianMod_MainObj_SubnestBeObj) =
  close(x.io)

### DefaultEndianMod_MainObj ###
proc read*(_: typedesc[DefaultEndianMod_MainObj], io: KaitaiStream, root: DefaultEndianMod, parent: DefaultEndianMod): DefaultEndianMod_MainObj =
  result = new(DefaultEndianMod_MainObj)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = io.readS4le()
  result.one = one
  let nest = DefaultEndianMod_MainObj_Subnest.read(io, result, root)
  result.nest = nest
  let nestBe = DefaultEndianMod_MainObj_SubnestBe.read(io, result, root)
  result.nestBe = nestBe

proc fromFile*(_: typedesc[DefaultEndianMod_MainObj], filename: string): DefaultEndianMod_MainObj =
  DefaultEndianMod_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianMod_MainObjObj) =
  close(x.io)

### DefaultEndianMod ###
proc read*(_: typedesc[DefaultEndianMod], io: KaitaiStream, root: DefaultEndianMod, parent: ref RootObj): DefaultEndianMod =
  result = new(DefaultEndianMod)
  let root = if root == nil: cast[DefaultEndianMod](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let main = DefaultEndianMod_MainObj.read(io, result, root)
  result.main = main

proc fromFile*(_: typedesc[DefaultEndianMod], filename: string): DefaultEndianMod =
  DefaultEndianMod.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianModObj) =
  close(x.io)

