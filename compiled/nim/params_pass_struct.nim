import kaitai_struct_nim_runtime

type
  ParamsPassStructblock* = ref ParamsPassStructblockObj
  ParamsPassStructblockObj* = object
    first*: Block
    one*: StructType
    io*: KaitaiStream
    root*: ParamsPassStruct
    parent*: ref RootObj
  ParamsPassStructstructTypebaz* = ref ParamsPassStructstructTypebazObj
  ParamsPassStructstructTypebazObj* = object
    first*: Block
    one*: StructType
    io*: KaitaiStream
    root*: ParamsPassStruct
    parent*: ref RootObj
  ParamsPassStructstructType* = ref ParamsPassStructstructTypeObj
  ParamsPassStructstructTypeObj* = object
    first*: Block
    one*: StructType
    io*: KaitaiStream
    root*: ParamsPassStruct
    parent*: ref RootObj
  ParamsPassStruct* = ref ParamsPassStructObj
  ParamsPassStructObj* = object
    first*: Block
    one*: StructType
    io*: KaitaiStream
    root*: ParamsPassStruct
    parent*: ref RootObj

### ParamsPassStructblock ###
proc read*(_: typedesc[ParamsPassStructblock], io: KaitaiStream, root: ParamsPassStruct, parent: ParamsPassStruct): ParamsPassStructblock =
  result = new(ParamsPassStructblock)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.foo = result.io.readU1()

proc fromFile*(_: typedesc[ParamsPassStructblock], filename: string): ParamsPassStructblock =
  ParamsPassStructblock.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsPassStructblockObj) =
  close(x.io)

### ParamsPassStructstructTypebaz ###
proc read*(_: typedesc[ParamsPassStructstructTypebaz], io: KaitaiStream, root: ParamsPassStruct, parent: ParamsPassStructstructType): ParamsPassStructstructTypebaz =
  result = new(ParamsPassStructstructTypebaz)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.qux = result.io.readU1()

proc fromFile*(_: typedesc[ParamsPassStructstructTypebaz], filename: string): ParamsPassStructstructTypebaz =
  ParamsPassStructstructTypebaz.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsPassStructstructTypebazObj) =
  close(x.io)

### ParamsPassStructstructType ###
proc read*(_: typedesc[ParamsPassStructstructType], io: KaitaiStream, root: ParamsPassStruct, parent: ParamsPassStruct): ParamsPassStructstructType =
  result = new(ParamsPassStructstructType)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.bar = Baz.read(result.io, result, root, foo)

proc fromFile*(_: typedesc[ParamsPassStructstructType], filename: string): ParamsPassStructstructType =
  ParamsPassStructstructType.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsPassStructstructTypeObj) =
  close(x.io)

### ParamsPassStruct ###
proc read*(_: typedesc[ParamsPassStruct], io: KaitaiStream, root: ParamsPassStruct, parent: ref RootObj): ParamsPassStruct =
  result = new(ParamsPassStruct)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.first = Block.read(result.io, result, root)
  result.one = StructType.read(result.io, result, root, first)

proc fromFile*(_: typedesc[ParamsPassStruct], filename: string): ParamsPassStruct =
  ParamsPassStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsPassStructObj) =
  close(x.io)

