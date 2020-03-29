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
  let one = io.readBitsInt(6)
  result.one = one
  alignToByte(io)
  let byte1 = io.readU1()
  result.byte1 = byte1
  let two = io.readBitsInt(3)
  result.two = two
  let three = io.readBitsInt(1) != 0
  result.three = three
  alignToByte(io)
  let byte2 = io.readU1()
  result.byte2 = byte2
  let four = io.readBitsInt(14)
  result.four = four
  alignToByte(io)
  let byte3 = io.readBytes(int(1))
  result.byte3 = byte3
  let fullByte = io.readBitsInt(8)
  result.fullByte = fullByte
  alignToByte(io)
  let byte4 = io.readU1()
  result.byte4 = byte4

proc fromFile*(_: typedesc[BitsByteAligned], filename: string): BitsByteAligned =
  BitsByteAligned.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BitsByteAlignedObj) =
  close(x.io)

