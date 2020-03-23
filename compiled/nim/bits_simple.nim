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
  result.byte1 = result.io.readBitsInt(8)
  result.byte2 = result.io.readBitsInt(8)
  result.bitsA = result.io.readBitsInt(1) != 0
  result.bitsB = result.io.readBitsInt(3)
  result.bitsC = result.io.readBitsInt(4)
  result.largeBits1 = result.io.readBitsInt(10)
  result.spacer = result.io.readBitsInt(3)
  result.largeBits2 = result.io.readBitsInt(11)
  alignToByte(result.io)
  result.normalS2 = result.io.readS2be()
  result.byte8910 = result.io.readBitsInt(24)
  result.byte11To14 = result.io.readBitsInt(32)
  result.byte15To19 = result.io.readBitsInt(40)
  result.byte20To27 = result.io.readBitsInt(64)

proc fromFile*(_: typedesc[BitsSimple], filename: string): BitsSimple =
  BitsSimple.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BitsSimpleObj) =
  close(x.io)

