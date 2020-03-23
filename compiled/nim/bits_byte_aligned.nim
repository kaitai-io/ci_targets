import kaitai_struct_nim_runtime

type
  BitsByteAligned* = ref BitsByteAlignedObj
  BitsByteAlignedObj* = object
    one*: uint64
    byte1*: uint8
    two*: uint64
    three*: bool
    byte2*: uint8
    four*: uint64
    byte3*: string
    fullByte*: uint64
    byte4*: uint8
    io*: KaitaiStream
    root*: BitsByteAligned
    parent*: ref RootObj

### BitsByteAligned ###
proc read*(_: typedesc[BitsByteAligned], io: KaitaiStream, root: BitsByteAligned, parent: ref RootObj): BitsByteAligned =
  result = new(BitsByteAligned)
  let root = if root == nil: cast[BitsByteAligned](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = result.io.readBitsInt(6)
  alignToByte(result.io)
  result.byte1 = result.io.readU1()
  result.two = result.io.readBitsInt(3)
  result.three = result.io.readBitsInt(1) != 0
  alignToByte(result.io)
  result.byte2 = result.io.readU1()
  result.four = result.io.readBitsInt(14)
  alignToByte(result.io)
  result.byte3 = result.io.readBytes(1)
  result.fullByte = result.io.readBitsInt(8)
  alignToByte(result.io)
  result.byte4 = result.io.readU1()

proc fromFile*(_: typedesc[BitsByteAligned], filename: string): BitsByteAligned =
  BitsByteAligned.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BitsByteAlignedObj) =
  close(x.io)

