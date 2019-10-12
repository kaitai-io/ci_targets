import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  BitsSimple* = ref BitsSimpleObj
  BitsSimpleObj* = object
    io: KaitaiStream
    root*: BitsSimple
    parent*: ref RootObj
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
    testIfB1Inst: proc(): int8

# BitsSimple
template `.`*(a: BitsSimple, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[BitsSimple], io: KaitaiStream, root: BitsSimple, parent: ref RootObj): owned BitsSimple =
  result = new(BitsSimple)
  let root = if root == nil: cast[BitsSimple](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.byte1 = readBitsInt(io, 8)
  result.byte2 = readBitsInt(io, 8)
  result.bitsA = bool(readBitsInt(io, 1))
  result.bitsB = readBitsInt(io, 3)
  result.bitsC = readBitsInt(io, 4)
  result.largeBits1 = readBitsInt(io, 10)
  result.spacer = readBitsInt(io, 3)
  result.largeBits2 = readBitsInt(io, 11)
  result.normalS2 = readS2be(io)
  result.byte8910 = readBitsInt(io, 24)
  result.byte11To14 = readBitsInt(io, 32)
  result.byte15To19 = readBitsInt(io, 40)
  result.byte20To27 = readBitsInt(io, 64)

  let shadow = result
  var testIfB1: Option[int8]
  result.testIfB1Inst = proc(): int8 =
    if isNone(testIfB1):
      testIfB1 = some(int8(123))
    get(testIfB1)

proc fromFile*(_: typedesc[BitsSimple], filename: string): owned BitsSimple =
  BitsSimple.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var BitsSimpleObj) =
  close(x.io)

