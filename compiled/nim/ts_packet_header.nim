import kaitai_struct_nim_runtime
import options

type
  TsPacketHeader* = ref object of KaitaiStruct
    `syncByte`*: uint8
    `transportErrorIndicator`*: bool
    `payloadUnitStartIndicator`*: bool
    `transportPriority`*: bool
    `pid`*: uint64
    `transportScramblingControl`*: uint64
    `adaptationFieldControl`*: TsPacketHeader_AdaptationFieldControlEnum
    `continuityCounter`*: uint64
    `tsPacketRemain`*: seq[byte]
    `parent`*: KaitaiStruct
  TsPacketHeader_AdaptationFieldControlEnum* = enum
    reserved = 0
    payload_only = 1
    adaptation_field_only = 2
    adaptation_field_and_payload = 3

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
  let transportErrorIndicatorExpr = this.io.readBitsIntBe(1) != 0
  this.transportErrorIndicator = transportErrorIndicatorExpr
  let payloadUnitStartIndicatorExpr = this.io.readBitsIntBe(1) != 0
  this.payloadUnitStartIndicator = payloadUnitStartIndicatorExpr
  let transportPriorityExpr = this.io.readBitsIntBe(1) != 0
  this.transportPriority = transportPriorityExpr
  let pidExpr = this.io.readBitsIntBe(13)
  this.pid = pidExpr
  let transportScramblingControlExpr = this.io.readBitsIntBe(2)
  this.transportScramblingControl = transportScramblingControlExpr
  let adaptationFieldControlExpr = TsPacketHeader_AdaptationFieldControlEnum(this.io.readBitsIntBe(2))
  this.adaptationFieldControl = adaptationFieldControlExpr
  let continuityCounterExpr = this.io.readBitsIntBe(4)
  this.continuityCounter = continuityCounterExpr
  let tsPacketRemainExpr = this.io.readBytes(int(184))
  this.tsPacketRemain = tsPacketRemainExpr

proc fromFile*(_: typedesc[TsPacketHeader], filename: string): TsPacketHeader =
  TsPacketHeader.read(newKaitaiFileStream(filename), nil, nil)

