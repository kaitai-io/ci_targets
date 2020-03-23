import kaitai_struct_nim_runtime

type
  TsPacketHeader* = ref TsPacketHeaderObj
  TsPacketHeaderObj* = object
    syncByte*: uint8
    transportErrorIndicator*: bool
    payloadUnitStartIndicator*: bool
    transportPriority*: bool
    pid*: uint64
    transportScramblingControl*: uint64
    adaptationFieldControl*: AdaptationFieldControlEnum
    continuityCounter*: uint64
    tsPacketRemain*: string
    io*: KaitaiStream
    root*: TsPacketHeader
    parent*: ref RootObj

### TsPacketHeader ###
proc read*(_: typedesc[TsPacketHeader], io: KaitaiStream, root: TsPacketHeader, parent: ref RootObj): TsPacketHeader =
  result = new(TsPacketHeader)
  let root = if root == nil: cast[TsPacketHeader](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.syncByte = result.io.readU1()
  result.transportErrorIndicator = result.io.readBitsInt(1) != 0
  result.payloadUnitStartIndicator = result.io.readBitsInt(1) != 0
  result.transportPriority = result.io.readBitsInt(1) != 0
  result.pid = result.io.readBitsInt(13)
  result.transportScramblingControl = result.io.readBitsInt(2)
  result.adaptationFieldControl = 
  result.continuityCounter = result.io.readBitsInt(4)
  alignToByte(result.io)
  result.tsPacketRemain = result.io.readBytes(184)

proc fromFile*(_: typedesc[TsPacketHeader], filename: string): TsPacketHeader =
  TsPacketHeader.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TsPacketHeaderObj) =
  close(x.io)

