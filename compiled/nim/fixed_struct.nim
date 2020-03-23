import kaitai_struct_nim_runtime

type
  FixedStructheader* = ref FixedStructheaderObj
  FixedStructheaderObj* = object
    io*: KaitaiStream
    root*: FixedStruct
    parent*: ref RootObj
  FixedStruct* = ref FixedStructObj
  FixedStructObj* = object
    io*: KaitaiStream
    root*: FixedStruct
    parent*: ref RootObj

### FixedStructheader ###
proc read*(_: typedesc[FixedStructheader], io: KaitaiStream, root: FixedStruct, parent: FixedStruct): FixedStructheader =
  result = new(FixedStructheader)
  let root = if root == nil: cast[FixedStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.magic1 = result.io.readBytes(6)
  result.uint8 = result.io.readU1()
  result.sint8 = result.io.readS1()
  result.magicUint = result.io.readBytes(10)
  result.uint16 = result.io.readU2le()
  result.uint32 = result.io.readU4le()
  result.uint64 = result.io.readU8le()
  result.magicSint = result.io.readBytes(10)
  result.sint16 = result.io.readS2le()
  result.sint32 = result.io.readS4le()
  result.sint64 = result.io.readS8le()
  result.magicUintLe = result.io.readBytes(9)
  result.uint16le = result.io.readU2le()
  result.uint32le = result.io.readU4le()
  result.uint64le = result.io.readU8le()
  result.magicSintLe = result.io.readBytes(9)
  result.sint16le = result.io.readS2le()
  result.sint32le = result.io.readS4le()
  result.sint64le = result.io.readS8le()
  result.magicUintBe = result.io.readBytes(9)
  result.uint16be = result.io.readU2be()
  result.uint32be = result.io.readU4be()
  result.uint64be = result.io.readU8be()
  result.magicSintBe = result.io.readBytes(9)
  result.sint16be = result.io.readS2be()
  result.sint32be = result.io.readS4be()
  result.sint64be = result.io.readS8be()

proc fromFile*(_: typedesc[FixedStructheader], filename: string): FixedStructheader =
  FixedStructheader.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var FixedStructheaderObj) =
  close(x.io)

### FixedStruct ###
proc read*(_: typedesc[FixedStruct], io: KaitaiStream, root: FixedStruct, parent: ref RootObj): FixedStruct =
  result = new(FixedStruct)
  let root = if root == nil: cast[FixedStruct](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[FixedStruct], filename: string): FixedStruct =
  FixedStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var FixedStructObj) =
  close(x.io)

