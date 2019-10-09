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

  result.one = readBitsInt(io, 6)
  result.byte1 = readU1(io)
  result.two = readBitsInt(io, 3)
  result.three = bool(readBitsInt(io, 1))
  result.byte2 = readU1(io)
  result.four = readBitsInt(io, 14)
  result.byte3 = readBytes(io, int(1))
  result.fullByte = readBitsInt(io, 8)
  result.byte4 = readU1(io)

proc fromFile*(_: typedesc[BitsByteAligned], filename: string): owned BitsByteAligned =
  BitsByteAligned.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var BitsByteAlignedObj) =
  close(x.io)

