import ../../runtime/nim/kaitai



type
  BitsByteAligned* = ref BitsByteAlignedObj
  BitsByteAlignedObj* = object
    io: KaitaiStream
    root*: BitsByteAligned
    parent*: ref RootObj
    one*: uint64
    byte1*: uint8
    two*: uint64
    three*: bool
    byte2*: uint8
    four*: uint64
    byte3*: seq[byte]
    fullByte*: uint64
    byte4*: uint8

# BitsByteAligned
proc read*(_: typedesc[BitsByteAligned], io: KaitaiStream, root: BitsByteAligned, parent: ref RootObj): owned BitsByteAligned =
  result = new(BitsByteAligned)
  let root = if root == nil: cast[BitsByteAligned](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let one = readBitsInt(io, 6)
  result.one = one
  alignToByte(io)
  let byte1 = readU1(io)
  result.byte1 = byte1
  let two = readBitsInt(io, 3)
  result.two = two
  let three = bool(readBitsInt(io, 1))
  result.three = three
  alignToByte(io)
  let byte2 = readU1(io)
  result.byte2 = byte2
  let four = readBitsInt(io, 14)
  result.four = four
  alignToByte(io)
  let byte3 = readBytes(io, int(1))
  result.byte3 = byte3
  let fullByte = readBitsInt(io, 8)
  result.fullByte = fullByte
  alignToByte(io)
  let byte4 = readU1(io)
  result.byte4 = byte4


proc fromFile*(_: typedesc[BitsByteAligned], filename: string): owned BitsByteAligned =
  BitsByteAligned.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var BitsByteAlignedObj) =
  close(x.io)

