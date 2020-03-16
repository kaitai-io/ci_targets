import kaitai_struct_nim_runtime



type
  Integers* = ref IntegersObj
  IntegersObj* = object
    io: KaitaiStream
    root*: Integers
    parent*: ref RootObj
    magic1*: seq[byte]
    uint8*: uint8
    sint8*: int8
    magicUint*: seq[byte]
    uint16*: uint16
    uint32*: uint32
    uint64*: uint64
    magicSint*: seq[byte]
    sint16*: int16
    sint32*: int32
    sint64*: int64
    magicUintLe*: seq[byte]
    uint16le*: uint16
    uint32le*: uint32
    uint64le*: uint64
    magicSintLe*: seq[byte]
    sint16le*: int16
    sint32le*: int32
    sint64le*: int64
    magicUintBe*: seq[byte]
    uint16be*: uint16
    uint32be*: uint32
    uint64be*: uint64
    magicSintBe*: seq[byte]
    sint16be*: int16
    sint32be*: int32
    sint64be*: int64

# Integers
proc read*(_: typedesc[Integers], io: KaitaiStream, root: Integers, parent: ref RootObj): owned Integers =
  result = new(Integers)
  let root = if root == nil: cast[Integers](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let magic1 = readBytes(io, int(6))
  result.magic1 = magic1
  let uint8 = readU1(io)
  result.uint8 = uint8
  let sint8 = readS1(io)
  result.sint8 = sint8
  let magicUint = readBytes(io, int(10))
  result.magicUint = magicUint
  let uint16 = readU2le(io)
  result.uint16 = uint16
  let uint32 = readU4le(io)
  result.uint32 = uint32
  let uint64 = readU8le(io)
  result.uint64 = uint64
  let magicSint = readBytes(io, int(10))
  result.magicSint = magicSint
  let sint16 = readS2le(io)
  result.sint16 = sint16
  let sint32 = readS4le(io)
  result.sint32 = sint32
  let sint64 = readS8le(io)
  result.sint64 = sint64
  let magicUintLe = readBytes(io, int(9))
  result.magicUintLe = magicUintLe
  let uint16le = readU2le(io)
  result.uint16le = uint16le
  let uint32le = readU4le(io)
  result.uint32le = uint32le
  let uint64le = readU8le(io)
  result.uint64le = uint64le
  let magicSintLe = readBytes(io, int(9))
  result.magicSintLe = magicSintLe
  let sint16le = readS2le(io)
  result.sint16le = sint16le
  let sint32le = readS4le(io)
  result.sint32le = sint32le
  let sint64le = readS8le(io)
  result.sint64le = sint64le
  let magicUintBe = readBytes(io, int(9))
  result.magicUintBe = magicUintBe
  let uint16be = readU2be(io)
  result.uint16be = uint16be
  let uint32be = readU4be(io)
  result.uint32be = uint32be
  let uint64be = readU8be(io)
  result.uint64be = uint64be
  let magicSintBe = readBytes(io, int(9))
  result.magicSintBe = magicSintBe
  let sint16be = readS2be(io)
  result.sint16be = sint16be
  let sint32be = readS4be(io)
  result.sint32be = sint32be
  let sint64be = readS8be(io)
  result.sint64be = sint64be


proc fromFile*(_: typedesc[Integers], filename: string): owned Integers =
  Integers.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var IntegersObj) =
  close(x.io)

