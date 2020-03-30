import kaitai_struct_nim_runtime
import options

type
  FixedStruct_Header* = ref FixedStruct_HeaderObj
  FixedStruct_HeaderObj* = object
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
    root*: FixedStruct
    parent*: FixedStruct
  FixedStruct* = ref FixedStructObj
  FixedStructObj* = object
    io*: KaitaiStream
    root*: FixedStruct
    parent*: ref RootObj
    hdrInst*: Option[FixedStruct_Header]

## FixedStruct_Header
proc read*(_: typedesc[FixedStruct_Header], io: KaitaiStream, root: FixedStruct, parent: FixedStruct): FixedStruct_Header =
  let this = new(FixedStruct_Header)
  let root = if root == nil: cast[FixedStruct](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.magic1 = this.io.readBytes(int(6))
  this.uint8 = this.io.readU1()
  this.sint8 = this.io.readS1()
  this.magicUint = this.io.readBytes(int(10))
  this.uint16 = this.io.readU2le()
  this.uint32 = this.io.readU4le()
  this.uint64 = this.io.readU8le()
  this.magicSint = this.io.readBytes(int(10))
  this.sint16 = this.io.readS2le()
  this.sint32 = this.io.readS4le()
  this.sint64 = this.io.readS8le()
  this.magicUintLe = this.io.readBytes(int(9))
  this.uint16le = this.io.readU2le()
  this.uint32le = this.io.readU4le()
  this.uint64le = this.io.readU8le()
  this.magicSintLe = this.io.readBytes(int(9))
  this.sint16le = this.io.readS2le()
  this.sint32le = this.io.readS4le()
  this.sint64le = this.io.readS8le()
  this.magicUintBe = this.io.readBytes(int(9))
  this.uint16be = this.io.readU2be()
  this.uint32be = this.io.readU4be()
  this.uint64be = this.io.readU8be()
  this.magicSintBe = this.io.readBytes(int(9))
  this.sint16be = this.io.readS2be()
  this.sint32be = this.io.readS4be()
  this.sint64be = this.io.readS8be()
  result = this

proc fromFile*(_: typedesc[FixedStruct_Header], filename: string): FixedStruct_Header =
  FixedStruct_Header.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var FixedStruct_HeaderObj) =
  close(x.io)

## FixedStruct
proc hdr*(this: FixedStruct): FixedStruct_Header
proc hdr(this: FixedStruct): FixedStruct_Header = 
  if isSome(this.hdrInst):
    return get(this.hdrInst)
  let pos = this.io.pos()
  this.io.seek(0)
  this.hdrInst = some(FixedStruct_Header.read(this.io, this.root, this))
  this.io.seek(pos)
  return get(this.hdrInst)

proc read*(_: typedesc[FixedStruct], io: KaitaiStream, root: FixedStruct, parent: ref RootObj): FixedStruct =
  let this = new(FixedStruct)
  let root = if root == nil: cast[FixedStruct](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[FixedStruct], filename: string): FixedStruct =
  FixedStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var FixedStructObj) =
  close(x.io)

