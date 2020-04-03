import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  BitsSimple* = ref object of KaitaiStruct
    byte1*: uint64
    byte2*: uint64
    bitsA*: bool
    bitsB*: uint64
    bitsC*: uint64
    largeBits1*: uint64
    spacer*: uint64
    largeBits2*: uint64
    normalS2*: int16
    byte8910*: uint64
    byte11To14*: uint64
    byte15To19*: uint64
    byte20To27*: uint64
    parent*: KaitaiStruct
    testIfB1Inst*: Option[int8]

proc read*(_: typedesc[BitsSimple], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSimple

proc testIfB1*(this: BitsSimple): int8

proc read*(_: typedesc[BitsSimple], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BitsSimple =
  template this: untyped = result
  this = new(BitsSimple)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.byte1 = this.io.readBitsInt(8)
  this.byte2 = this.io.readBitsInt(8)
  this.bitsA = this.io.readBitsInt(1) != 0
  this.bitsB = this.io.readBitsInt(3)
  this.bitsC = this.io.readBitsInt(4)
  this.largeBits1 = this.io.readBitsInt(10)
  this.spacer = this.io.readBitsInt(3)
  this.largeBits2 = this.io.readBitsInt(11)
  alignToByte(this.io)
  this.normalS2 = this.io.readS2be()
  this.byte8910 = this.io.readBitsInt(24)
  this.byte11To14 = this.io.readBitsInt(32)
  this.byte15To19 = this.io.readBitsInt(40)
  this.byte20To27 = this.io.readBitsInt(64)

proc testIfB1(this: BitsSimple): int8 = 
  if isSome(this.testIfB1Inst):
    return get(this.testIfB1Inst)
  if this.bitsA == false:
    this.testIfB1Inst = some(123)
  return get(this.testIfB1Inst)

proc fromFile*(_: typedesc[BitsSimple], filename: string): BitsSimple =
  BitsSimple.read(newKaitaiFileStream(filename), nil, nil)

