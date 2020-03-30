import kaitai_struct_nim_runtime
import options

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
  let this = new(BitsByteAligned)
  let root = if root == nil: cast[BitsByteAligned](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readBitsInt(6)
  this.one = one
  alignToByte(this.io)
  let byte1 = this.io.readU1()
  this.byte1 = byte1
  let two = this.io.readBitsInt(3)
  this.two = two
  let three = this.io.readBitsInt(1) != 0
  this.three = three
  alignToByte(this.io)
  let byte2 = this.io.readU1()
  this.byte2 = byte2
  let four = this.io.readBitsInt(14)
  this.four = four
  alignToByte(this.io)
  let byte3 = this.io.readBytes(int(1))
  this.byte3 = byte3
  let fullByte = this.io.readBitsInt(8)
  this.fullByte = fullByte
  alignToByte(this.io)
  let byte4 = this.io.readU1()
  this.byte4 = byte4
  result = this

proc fromFile*(_: typedesc[BitsByteAligned], filename: string): BitsByteAligned =
  BitsByteAligned.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BitsByteAlignedObj) =
  close(x.io)

