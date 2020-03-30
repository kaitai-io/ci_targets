import kaitai_struct_nim_runtime
import options

type
  BitsSimple* = ref BitsSimpleObj
  BitsSimpleObj* = object
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
    io*: KaitaiStream
    root*: BitsSimple
    parent*: ref RootObj
    testIfB1Inst*: Option[int8]

### BitsSimple ###
proc testIfB1*(this: BitsSimple): int8
proc testIfB1(this: BitsSimple): int8 = 
  if isSome(this.testIfB1Inst):
    return get(this.testIfB1Inst)
  if this.bitsA == false:
    let testIfB1Inst = 123
    this.testIfB1Inst = some(testIfB1Inst)
  return get(this.testIfB1Inst)

proc read*(_: typedesc[BitsSimple], io: KaitaiStream, root: BitsSimple, parent: ref RootObj): BitsSimple =
  let this = new(BitsSimple)
  let root = if root == nil: cast[BitsSimple](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let byte1 = this.io.readBitsInt(8)
  this.byte1 = byte1
  let byte2 = this.io.readBitsInt(8)
  this.byte2 = byte2
  let bitsA = this.io.readBitsInt(1) != 0
  this.bitsA = bitsA
  let bitsB = this.io.readBitsInt(3)
  this.bitsB = bitsB
  let bitsC = this.io.readBitsInt(4)
  this.bitsC = bitsC
  let largeBits1 = this.io.readBitsInt(10)
  this.largeBits1 = largeBits1
  let spacer = this.io.readBitsInt(3)
  this.spacer = spacer
  let largeBits2 = this.io.readBitsInt(11)
  this.largeBits2 = largeBits2
  alignToByte(this.io)
  let normalS2 = this.io.readS2be()
  this.normalS2 = normalS2
  let byte8910 = this.io.readBitsInt(24)
  this.byte8910 = byte8910
  let byte11To14 = this.io.readBitsInt(32)
  this.byte11To14 = byte11To14
  let byte15To19 = this.io.readBitsInt(40)
  this.byte15To19 = byte15To19
  let byte20To27 = this.io.readBitsInt(64)
  this.byte20To27 = byte20To27
  result = this

proc fromFile*(_: typedesc[BitsSimple], filename: string): BitsSimple =
  BitsSimple.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BitsSimpleObj) =
  close(x.io)

