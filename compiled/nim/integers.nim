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
  let magic1 = io.readBytes(int(6))
  result.magic1 = magic1
  let uint8 = io.readU1()
  result.uint8 = uint8
  let sint8 = io.readS1()
  result.sint8 = sint8
  let magicUint = io.readBytes(int(10))
  result.magicUint = magicUint
  let uint16 = io.readU2le()
  result.uint16 = uint16
  let uint32 = io.readU4le()
  result.uint32 = uint32
  let uint64 = io.readU8le()
  result.uint64 = uint64
  let magicSint = io.readBytes(int(10))
  result.magicSint = magicSint
  let sint16 = io.readS2le()
  result.sint16 = sint16
  let sint32 = io.readS4le()
  result.sint32 = sint32
  let sint64 = io.readS8le()
  result.sint64 = sint64
  let magicUintLe = io.readBytes(int(9))
  result.magicUintLe = magicUintLe
  let uint16le = io.readU2le()
  result.uint16le = uint16le
  let uint32le = io.readU4le()
  result.uint32le = uint32le
  let uint64le = io.readU8le()
  result.uint64le = uint64le
  let magicSintLe = io.readBytes(int(9))
  result.magicSintLe = magicSintLe
  let sint16le = io.readS2le()
  result.sint16le = sint16le
  let sint32le = io.readS4le()
  result.sint32le = sint32le
  let sint64le = io.readS8le()
  result.sint64le = sint64le
  let magicUintBe = io.readBytes(int(9))
  result.magicUintBe = magicUintBe
  let uint16be = io.readU2be()
  result.uint16be = uint16be
  let uint32be = io.readU4be()
  result.uint32be = uint32be
  let uint64be = io.readU8be()
  result.uint64be = uint64be
  let magicSintBe = io.readBytes(int(9))
  result.magicSintBe = magicSintBe
  let sint16be = io.readS2be()
  result.sint16be = sint16be
  let sint32be = io.readS4be()
  result.sint32be = sint32be
  let sint64be = io.readS8be()
  result.sint64be = sint64be

proc fromFile*(_: typedesc[Integers], filename: string): Integers =
  Integers.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersObj) =
  close(x.io)

