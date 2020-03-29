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
  let syncByte = io.readU1()
  result.syncByte = syncByte
  let transportErrorIndicator = io.readBitsInt(1) != 0
  result.transportErrorIndicator = transportErrorIndicator
  let payloadUnitStartIndicator = io.readBitsInt(1) != 0
  result.payloadUnitStartIndicator = payloadUnitStartIndicator
  let transportPriority = io.readBitsInt(1) != 0
  result.transportPriority = transportPriority
  let pid = io.readBitsInt(13)
  result.pid = pid
  let transportScramblingControl = io.readBitsInt(2)
  result.transportScramblingControl = transportScramblingControl
  let adaptationFieldControl = 
  result.adaptationFieldControl = adaptationFieldControl
  let continuityCounter = io.readBitsInt(4)
  result.continuityCounter = continuityCounter
  alignToByte(io)
  let tsPacketRemain = io.readBytes(int(184))
  result.tsPacketRemain = tsPacketRemain

proc fromFile*(_: typedesc[TsPacketHeader], filename: string): TsPacketHeader =
  TsPacketHeader.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var TsPacketHeaderObj) =
  close(x.io)

