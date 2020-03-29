import kaitai_struct_nim_runtime

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

### BitsSimple ###
proc read*(_: typedesc[BitsSimple], io: KaitaiStream, root: BitsSimple, parent: ref RootObj): BitsSimple =
  result = new(BitsSimple)
  let root = if root == nil: cast[BitsSimple](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let byte1 = io.readBitsInt(8)
  result.byte1 = byte1
  let byte2 = io.readBitsInt(8)
  result.byte2 = byte2
  let bitsA = io.readBitsInt(1) != 0
  result.bitsA = bitsA
  let bitsB = io.readBitsInt(3)
  result.bitsB = bitsB
  let bitsC = io.readBitsInt(4)
  result.bitsC = bitsC
  let largeBits1 = io.readBitsInt(10)
  result.largeBits1 = largeBits1
  let spacer = io.readBitsInt(3)
  result.spacer = spacer
  let largeBits2 = io.readBitsInt(11)
  result.largeBits2 = largeBits2
  alignToByte(io)
  let normalS2 = io.readS2be()
  result.normalS2 = normalS2
  let byte8910 = io.readBitsInt(24)
  result.byte8910 = byte8910
  let byte11To14 = io.readBitsInt(32)
  result.byte11To14 = byte11To14
  let byte15To19 = io.readBitsInt(40)
  result.byte15To19 = byte15To19
  let byte20To27 = io.readBitsInt(64)
  result.byte20To27 = byte20To27

proc fromFile*(_: typedesc[BitsSimple], filename: string): BitsSimple =
  BitsSimple.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BitsSimpleObj) =
  close(x.io)

