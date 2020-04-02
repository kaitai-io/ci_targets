import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ValidShort* = ref object of KaitaiStruct
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
    parent*: KaitaiStruct

proc read*(_: typedesc[ValidShort], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidShort

proc read*(_: typedesc[ValidShort], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidShort =
  template this: untyped = result
  this = new(ValidShort)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.magic1 = this.io.readBytes(int(6))
  this.uint8 = this.io.readU1()
  this.sint8 = this.io.readS1()
  this.magicUint = convert(this.io.readBytes(int(10)), srcEncoding = "utf-8")
  this.uint16 = this.io.readU2le()
  this.uint32 = this.io.readU4le()
  this.uint64 = this.io.readU8le()
  this.magicSint = convert(this.io.readBytes(int(10)), srcEncoding = "utf-8")
  this.sint16 = this.io.readS2le()
  this.sint32 = this.io.readS4le()
  this.sint64 = this.io.readS8le()

proc fromFile*(_: typedesc[ValidShort], filename: string): ValidShort =
  ValidShort.read(newKaitaiFileStream(filename), nil, nil)

