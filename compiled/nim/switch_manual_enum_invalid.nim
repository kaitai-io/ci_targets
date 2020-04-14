import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(SwitchManualEnumInvalid_Opcode_code_enum)
const
  intval* = SwitchManualEnumInvalid_Opcode_code_enum(73)
  strval* = SwitchManualEnumInvalid_Opcode_code_enum(83)

type
  SwitchManualEnumInvalid* = ref object of KaitaiStruct
    opcodes*: seq[SwitchManualEnumInvalid_Opcode]
    parent*: KaitaiStruct
  SwitchManualEnumInvalid_Opcode* = ref object of KaitaiStruct
    code*: SwitchManualEnumInvalid_Opcode_CodeEnum
    body*: KaitaiStruct
    parent*: SwitchManualEnumInvalid
  SwitchManualEnumInvalid_Opcode_Intval* = ref object of KaitaiStruct
    value*: uint8
    parent*: SwitchManualEnumInvalid_Opcode
  SwitchManualEnumInvalid_Opcode_Strval* = ref object of KaitaiStruct
    value*: string
    parent*: SwitchManualEnumInvalid_Opcode

proc read*(_: typedesc[SwitchManualEnumInvalid], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualEnumInvalid
proc read*(_: typedesc[SwitchManualEnumInvalid_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalid): SwitchManualEnumInvalid_Opcode
proc read*(_: typedesc[SwitchManualEnumInvalid_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalid_Opcode): SwitchManualEnumInvalid_Opcode_Intval
proc read*(_: typedesc[SwitchManualEnumInvalid_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalid_Opcode): SwitchManualEnumInvalid_Opcode_Strval


proc read*(_: typedesc[SwitchManualEnumInvalid], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualEnumInvalid =
  template this: untyped = result
  this = new(SwitchManualEnumInvalid)
  let root = if root == nil: cast[SwitchManualEnumInvalid](this) else: cast[SwitchManualEnumInvalid](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      this.opcodes.add(SwitchManualEnumInvalid_Opcode.read(this.io, this.root, this))
      inc i

proc fromFile*(_: typedesc[SwitchManualEnumInvalid], filename: string): SwitchManualEnumInvalid =
  SwitchManualEnumInvalid.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualEnumInvalid_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalid): SwitchManualEnumInvalid_Opcode =
  template this: untyped = result
  this = new(SwitchManualEnumInvalid_Opcode)
  let root = if root == nil: cast[SwitchManualEnumInvalid](this) else: cast[SwitchManualEnumInvalid](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.code = SwitchManualEnumInvalid_Opcode_CodeEnum(this.io.readU1())
  case this.code
  of switch_manual_enum_invalid.intval:
    this.body = SwitchManualEnumInvalid_Opcode_Intval.read(this.io, this.root, this)
  of switch_manual_enum_invalid.strval:
    this.body = SwitchManualEnumInvalid_Opcode_Strval.read(this.io, this.root, this)
  else: discard

proc fromFile*(_: typedesc[SwitchManualEnumInvalid_Opcode], filename: string): SwitchManualEnumInvalid_Opcode =
  SwitchManualEnumInvalid_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualEnumInvalid_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalid_Opcode): SwitchManualEnumInvalid_Opcode_Intval =
  template this: untyped = result
  this = new(SwitchManualEnumInvalid_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualEnumInvalid](this) else: cast[SwitchManualEnumInvalid](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.value = this.io.readU1()

proc fromFile*(_: typedesc[SwitchManualEnumInvalid_Opcode_Intval], filename: string): SwitchManualEnumInvalid_Opcode_Intval =
  SwitchManualEnumInvalid_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualEnumInvalid_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalid_Opcode): SwitchManualEnumInvalid_Opcode_Strval =
  template this: untyped = result
  this = new(SwitchManualEnumInvalid_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualEnumInvalid](this) else: cast[SwitchManualEnumInvalid](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.value = encode(this.io.readBytesTerm(0, false, true, true), "ASCII")

proc fromFile*(_: typedesc[SwitchManualEnumInvalid_Opcode_Strval], filename: string): SwitchManualEnumInvalid_Opcode_Strval =
  SwitchManualEnumInvalid_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

