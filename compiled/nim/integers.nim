import kaitai_struct_nim_runtime

type
  Integers* = ref IntegersObj
  IntegersObj* = object
    magic1*: string
    uint8*: uint8
    sint8*: int8
    magicUint*: string
    uint16*: uint16
    uint32*: uint32
    uint64*: uint64
    magicSint*: string
    sint16*: int16
    sint32*: int32
    sint64*: int64
    magicUintLe*: string
    uint16le*: uint16
    uint32le*: uint32
    uint64le*: uint64
    magicSintLe*: string
    sint16le*: int16
    sint32le*: int32
    sint64le*: int64
    magicUintBe*: string
    uint16be*: uint16
    uint32be*: uint32
    uint64be*: uint64
    magicSintBe*: string
    sint16be*: int16
    sint32be*: int32
    sint64be*: int64
    io*: KaitaiStream
    root*: Integers
    parent*: ref RootObj

### Integers ###
proc read*(_: typedesc[Integers], io: KaitaiStream, root: Integers, parent: ref RootObj): Integers =
  result = new(Integers)
  let root = if root == nil: cast[Integers](result) else: root
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

proc fromFile*(_: typedesc[Integers], filename: string): Integers =
  Integers.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersObj) =
  close(x.io)

