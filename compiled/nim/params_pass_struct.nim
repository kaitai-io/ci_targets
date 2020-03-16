import ../../../runtime/nim/kaitai_struct_nim_runtime



type
  Block* = ref BlockObj
  BlockObj* = object
    io: KaitaiStream
    root*: ParamsPassStruct
    parent*: ParamsPassStruct
    foo*: uint8
  Baz* = ref BazObj
  BazObj* = object
    io: KaitaiStream
    root*: ParamsPassStruct
    parent*: StructType
    qux*: uint8
  StructType* = ref StructTypeObj
  StructTypeObj* = object
    io: KaitaiStream
    root*: ParamsPassStruct
    parent*: ParamsPassStruct
    bar*: Baz
  ParamsPassStruct* = ref ParamsPassStructObj
  ParamsPassStructObj* = object
    io: KaitaiStream
    root*: ParamsPassStruct
    parent*: ref RootObj
    first*: Block
    one*: StructType

# Block
proc read*(_: typedesc[Block], io: KaitaiStream, root: ParamsPassStruct, parent: ParamsPassStruct): owned Block =
  result = new(Block)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let foo = readU1(io)
  result.foo = foo


proc fromFile*(_: typedesc[Block], filename: string): owned Block =
  Block.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var BlockObj) =
  close(x.io)

# Baz
proc read*(_: typedesc[Baz], io: KaitaiStream, root: ParamsPassStruct, parent: StructType): owned Baz =
  result = new(Baz)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let qux = readU1(io)
  result.qux = qux


proc fromFile*(_: typedesc[Baz], filename: string): owned Baz =
  Baz.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var BazObj) =
  close(x.io)

# StructType
proc read*(_: typedesc[StructType], io: KaitaiStream, root: ParamsPassStruct, parent: ParamsPassStruct): owned StructType =
  result = new(StructType)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let bar = Baz.read(io, root, result)
  result.bar = bar


proc fromFile*(_: typedesc[StructType], filename: string): owned StructType =
  StructType.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var StructTypeObj) =
  close(x.io)

# ParamsPassStruct
proc read*(_: typedesc[ParamsPassStruct], io: KaitaiStream, root: ParamsPassStruct, parent: ref RootObj): owned ParamsPassStruct =
  result = new(ParamsPassStruct)
  let root = if root == nil: cast[ParamsPassStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let first = Block.read(io, root, result)
  result.first = first
  let one = StructType.read(io, root, result)
  result.one = one


proc fromFile*(_: typedesc[ParamsPassStruct], filename: string): owned ParamsPassStruct =
  ParamsPassStruct.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ParamsPassStructObj) =
  close(x.io)

