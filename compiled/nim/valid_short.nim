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
  result.magic1 = result.io.readBytes(6)
  result.uint8 = result.io.readU1()
  result.sint8 = result.io.readS1()
  result.magicUint = convert(result.io.readBytes(10), srcEncoding = "utf-8")
  result.uint16 = result.io.readU2le()
  result.uint32 = result.io.readU4le()
  result.uint64 = result.io.readU8le()
  result.magicSint = convert(result.io.readBytes(10), srcEncoding = "utf-8")
  result.sint16 = result.io.readS2le()
  result.sint32 = result.io.readS4le()
  result.sint64 = result.io.readS8le()

proc fromFile*(_: typedesc[ValidShort], filename: string): ValidShort =
  ValidShort.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidShortObj) =
  close(x.io)

