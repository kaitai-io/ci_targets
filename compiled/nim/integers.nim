import kaitai_struct_nim_runtime
import options

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
  let this = new(Integers)
  let root = if root == nil: cast[Integers](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let magic1 = this.io.readBytes(int(6))
  this.magic1 = magic1
  let uint8 = this.io.readU1()
  this.uint8 = uint8
  let sint8 = this.io.readS1()
  this.sint8 = sint8
  let magicUint = this.io.readBytes(int(10))
  this.magicUint = magicUint
  let uint16 = this.io.readU2le()
  this.uint16 = uint16
  let uint32 = this.io.readU4le()
  this.uint32 = uint32
  let uint64 = this.io.readU8le()
  this.uint64 = uint64
  let magicSint = this.io.readBytes(int(10))
  this.magicSint = magicSint
  let sint16 = this.io.readS2le()
  this.sint16 = sint16
  let sint32 = this.io.readS4le()
  this.sint32 = sint32
  let sint64 = this.io.readS8le()
  this.sint64 = sint64
  let magicUintLe = this.io.readBytes(int(9))
  this.magicUintLe = magicUintLe
  let uint16le = this.io.readU2le()
  this.uint16le = uint16le
  let uint32le = this.io.readU4le()
  this.uint32le = uint32le
  let uint64le = this.io.readU8le()
  this.uint64le = uint64le
  let magicSintLe = this.io.readBytes(int(9))
  this.magicSintLe = magicSintLe
  let sint16le = this.io.readS2le()
  this.sint16le = sint16le
  let sint32le = this.io.readS4le()
  this.sint32le = sint32le
  let sint64le = this.io.readS8le()
  this.sint64le = sint64le
  let magicUintBe = this.io.readBytes(int(9))
  this.magicUintBe = magicUintBe
  let uint16be = this.io.readU2be()
  this.uint16be = uint16be
  let uint32be = this.io.readU4be()
  this.uint32be = uint32be
  let uint64be = this.io.readU8be()
  this.uint64be = uint64be
  let magicSintBe = this.io.readBytes(int(9))
  this.magicSintBe = magicSintBe
  let sint16be = this.io.readS2be()
  this.sint16be = sint16be
  let sint32be = this.io.readS4be()
  this.sint32be = sint32be
  let sint64be = this.io.readS8be()
  this.sint64be = sint64be
  result = this

proc fromFile*(_: typedesc[Integers], filename: string): Integers =
  Integers.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersObj) =
  close(x.io)

