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

## BitsByteAligned
proc read*(_: typedesc[BitsByteAligned], io: KaitaiStream, root: BitsByteAligned, parent: ref RootObj): BitsByteAligned =
  let this = new(BitsByteAligned)
  let root = if root == nil: cast[BitsByteAligned](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readBitsInt(6)
  alignToByte(this.io)
  this.byte1 = this.io.readU1()
  this.two = this.io.readBitsInt(3)
  this.three = this.io.readBitsInt(1) != 0
  alignToByte(this.io)
  this.byte2 = this.io.readU1()
  this.four = this.io.readBitsInt(14)
  alignToByte(this.io)
  this.byte3 = this.io.readBytes(int(1))
  this.fullByte = this.io.readBitsInt(8)
  alignToByte(this.io)
  this.byte4 = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[BitsByteAligned], filename: string): BitsByteAligned =
  BitsByteAligned.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BitsByteAlignedObj) =
  close(x.io)

