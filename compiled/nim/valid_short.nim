import kaitai_struct_nim_runtime
import encodings

type
  ValidShort* = ref ValidShortObj
  ValidShortObj* = object
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
    io*: KaitaiStream
    root*: ValidShort
    parent*: ref RootObj

### ValidShort ###
proc read*(_: typedesc[ValidShort], io: KaitaiStream, root: ValidShort, parent: ref RootObj): ValidShort =
  result = new(ValidShort)
  let root = if root == nil: cast[ValidShort](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let magic1 = io.readBytes(int(6))
  result.magic1 = magic1
  let uint8 = io.readU1()
  result.uint8 = uint8
  let sint8 = io.readS1()
  result.sint8 = sint8
  let magicUint = convert(io.readBytes(int(10)), srcEncoding = "utf-8")
  result.magicUint = magicUint
  let uint16 = io.readU2le()
  result.uint16 = uint16
  let uint32 = io.readU4le()
  result.uint32 = uint32
  let uint64 = io.readU8le()
  result.uint64 = uint64
  let magicSint = convert(io.readBytes(int(10)), srcEncoding = "utf-8")
  result.magicSint = magicSint
  let sint16 = io.readS2le()
  result.sint16 = sint16
  let sint32 = io.readS4le()
  result.sint32 = sint32
  let sint64 = io.readS8le()
  result.sint64 = sint64

proc fromFile*(_: typedesc[ValidShort], filename: string): ValidShort =
  ValidShort.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidShortObj) =
  close(x.io)

