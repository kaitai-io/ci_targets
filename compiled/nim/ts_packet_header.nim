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
    tsPacketRemain*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[TsPacketHeader], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TsPacketHeader



##[
describes the first 4 header bytes of a TS Packet header

]##
proc read*(_: typedesc[TsPacketHeader], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TsPacketHeader =
  template this: untyped = result
  this = new(TsPacketHeader)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.syncByte = this.io.readU1()
  this.transportErrorIndicator = this.io.readBitsInt(1) != 0
  this.payloadUnitStartIndicator = this.io.readBitsInt(1) != 0
  this.transportPriority = this.io.readBitsInt(1) != 0
  this.pid = this.io.readBitsInt(13)
  this.transportScramblingControl = this.io.readBitsInt(2)
  this.adaptationFieldControl = TsPacketHeader_AdaptationFieldControlEnum(this.io.readBitsInt(2))
  this.continuityCounter = this.io.readBitsInt(4)
  alignToByte(this.io)
  this.tsPacketRemain = this.io.readBytes(int(184))

proc fromFile*(_: typedesc[TsPacketHeader], filename: string): TsPacketHeader =
  TsPacketHeader.read(newKaitaiFileStream(filename), nil, nil)

