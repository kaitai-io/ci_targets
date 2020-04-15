import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(TsPacketHeader_adaptation_field_control_enum)
const
  reserved* = TsPacketHeader_adaptation_field_control_enum(0)
  payload_only* = TsPacketHeader_adaptation_field_control_enum(1)
  adaptation_field_only* = TsPacketHeader_adaptation_field_control_enum(2)
  adaptation_field_and_payload* = TsPacketHeader_adaptation_field_control_enum(3)

type
  TsPacketHeader* = ref object of KaitaiStruct
    syncByte*: uint8
    transportErrorIndicator*: bool
    payloadUnitStartIndicator*: bool
    transportPriority*: bool
    pid*: uint64
    transportScramblingControl*: uint64
    adaptationFieldControl*: TsPacketHeader_AdaptationFieldControlEnum
    continuityCounter*: uint64
    tsPacketRemain*: seq[byte]
    parent*: KaitaiStruct

proc read*(_: typedesc[TsPacketHeader], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TsPacketHeader



##[
describes the first 4 header bytes of a TS Packet header

]##
proc read*(_: typedesc[TsPacketHeader], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TsPacketHeader =
  template this: untyped = result
  this = new(TsPacketHeader)
  let root = if root == nil: cast[TsPacketHeader](this) else: cast[TsPacketHeader](root)
  this.io = io
  this.root = root
  this.parent = parent

  let syncByteExpr = this.io.readU1()
  this.syncByte = syncByteExpr
  let transportErrorIndicatorExpr = this.io.readBitsInt(1) != 0
  this.transportErrorIndicator = transportErrorIndicatorExpr
  let payloadUnitStartIndicatorExpr = this.io.readBitsInt(1) != 0
  this.payloadUnitStartIndicator = payloadUnitStartIndicatorExpr
  let transportPriorityExpr = this.io.readBitsInt(1) != 0
  this.transportPriority = transportPriorityExpr
  let pidExpr = this.io.readBitsInt(13)
  this.pid = pidExpr
  let transportScramblingControlExpr = this.io.readBitsInt(2)
  this.transportScramblingControl = transportScramblingControlExpr
  let adaptationFieldControlExpr = TsPacketHeader_AdaptationFieldControlEnum(this.io.readBitsInt(2))
  this.adaptationFieldControl = adaptationFieldControlExpr
  let continuityCounterExpr = this.io.readBitsInt(4)
  this.continuityCounter = continuityCounterExpr
  alignToByte(this.io)
  let tsPacketRemainExpr = this.io.readBytes(int(184))
  this.tsPacketRemain = tsPacketRemainExpr

proc fromFile*(_: typedesc[TsPacketHeader], filename: string): TsPacketHeader =
  TsPacketHeader.read(newKaitaiFileStream(filename), nil, nil)

