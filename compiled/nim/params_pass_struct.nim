import kaitai_struct_nim_runtime

type
  ParamsPassStruct_Block* = ref ParamsPassStruct_BlockObj
  ParamsPassStruct_BlockObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: ParamsPassStruct
    parent*: ParamsPassStruct
  ParamsPassStruct_StructType_Baz* = ref ParamsPassStruct_StructType_BazObj
  ParamsPassStruct_StructType_BazObj* = object
    qux*: uint8
    foo*: ref RootObj
    io*: KaitaiStream
    root*: ParamsPassStruct
    parent*: ParamsPassStruct_StructType
  ParamsPassStruct_StructType* = ref ParamsPassStruct_StructTypeObj
  ParamsPassStruct_StructTypeObj* = object
    bar*: ParamsPassStruct_StructType_Baz
    foo*: ref RootObj
    io*: KaitaiStream
    root*: ParamsPassStruct
    parent*: ParamsPassStruct
  ParamsPassStruct* = ref ParamsPassStructObj
  ParamsPassStructObj* = object
    first*: ParamsPassStruct_Block
    one*: ParamsPassStruct_StructType
    io*: KaitaiStream
    root*: ParamsPassStruct
    parent*: ref RootObj

### ParamsPassStruct_Block ###
proc read*(_: typedesc[ParamsPassStruct_Block], io: KaitaiStream, root: ParamsPassStruct, parent: ParamsPassStruct): ParamsPassStruct_Block =
  result = new(ParamsPassStruct_Block)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let foo = io.readU1()
  result.foo = foo

proc fromFile*(_: typedesc[ParamsPassStruct_Block], filename: string): ParamsPassStruct_Block =
  ParamsPassStruct_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsPassStruct_BlockObj) =
  close(x.io)

### ParamsPassStruct_StructType_Baz ###
proc read*(_: typedesc[ParamsPassStruct_StructType_Baz], io: KaitaiStream, root: ParamsPassStruct, parent: ParamsPassStruct_StructType): ParamsPassStruct_StructType_Baz =
  result = new(ParamsPassStruct_StructType_Baz)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let qux = io.readU1()
  result.qux = qux

proc fromFile*(_: typedesc[ParamsPassStruct_StructType_Baz], filename: string): ParamsPassStruct_StructType_Baz =
  ParamsPassStruct_StructType_Baz.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsPassStruct_StructType_BazObj) =
  close(x.io)

### ParamsPassStruct_StructType ###
proc read*(_: typedesc[ParamsPassStruct_StructType], io: KaitaiStream, root: ParamsPassStruct, parent: ParamsPassStruct): ParamsPassStruct_StructType =
  result = new(ParamsPassStruct_StructType)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let bar = ParamsPassStruct_StructType_Baz.read(io, result, root, foo)
  result.bar = bar

proc fromFile*(_: typedesc[ParamsPassStruct_StructType], filename: string): ParamsPassStruct_StructType =
  ParamsPassStruct_StructType.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsPassStruct_StructTypeObj) =
  close(x.io)

### ParamsPassStruct ###
proc read*(_: typedesc[ParamsPassStruct], io: KaitaiStream, root: ParamsPassStruct, parent: ref RootObj): ParamsPassStruct =
  result = new(ParamsPassStruct)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let first = ParamsPassStruct_Block.read(io, result, root)
  result.first = first
  let one = ParamsPassStruct_StructType.read(io, result, root, first)
  result.one = one

proc fromFile*(_: typedesc[ParamsPassStruct], filename: string): ParamsPassStruct =
  ParamsPassStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsPassStructObj) =
  close(x.io)

