import kaitai_struct_nim_runtime
import options
import encodings

type
  SwitchManualEnumInvalid_Opcode_Intval* = ref SwitchManualEnumInvalid_Opcode_IntvalObj
  SwitchManualEnumInvalid_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchManualEnumInvalid
    parent*: SwitchManualEnumInvalid_Opcode
  SwitchManualEnumInvalid_Opcode_Strval* = ref SwitchManualEnumInvalid_Opcode_StrvalObj
  SwitchManualEnumInvalid_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchManualEnumInvalid
    parent*: SwitchManualEnumInvalid_Opcode
  SwitchManualEnumInvalid_Opcode* = ref SwitchManualEnumInvalid_OpcodeObj
  SwitchManualEnumInvalid_OpcodeObj* = object
    code*: SwitchManualEnumInvalid_Opcode_CodeEnum
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchManualEnumInvalid
    parent*: SwitchManualEnumInvalid
  SwitchManualEnumInvalid_Opcode_code_enum* = enum
    intval = 73
    strval = 83
  SwitchManualEnumInvalid* = ref SwitchManualEnumInvalidObj
  SwitchManualEnumInvalidObj* = object
    opcodes*: seq[SwitchManualEnumInvalid_Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalid
    parent*: ref RootObj

## SwitchManualEnumInvalid_Opcode_Intval
proc read*(_: typedesc[SwitchManualEnumInvalid_Opcode_Intval], io: KaitaiStream, root: SwitchManualEnumInvalid, parent: SwitchManualEnumInvalid_Opcode): SwitchManualEnumInvalid_Opcode_Intval =
  let this = new(SwitchManualEnumInvalid_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualEnumInvalid](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[SwitchManualEnumInvalid_Opcode_Intval], filename: string): SwitchManualEnumInvalid_Opcode_Intval =
  SwitchManualEnumInvalid_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalid_Opcode_IntvalObj) =
  close(x.io)

## SwitchManualEnumInvalid_Opcode_Strval
proc read*(_: typedesc[SwitchManualEnumInvalid_Opcode_Strval], io: KaitaiStream, root: SwitchManualEnumInvalid, parent: SwitchManualEnumInvalid_Opcode): SwitchManualEnumInvalid_Opcode_Strval =
  let this = new(SwitchManualEnumInvalid_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualEnumInvalid](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result = this

proc fromFile*(_: typedesc[SwitchManualEnumInvalid_Opcode_Strval], filename: string): SwitchManualEnumInvalid_Opcode_Strval =
  SwitchManualEnumInvalid_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalid_Opcode_StrvalObj) =
  close(x.io)

## SwitchManualEnumInvalid_Opcode
proc read*(_: typedesc[SwitchManualEnumInvalid_Opcode], io: KaitaiStream, root: SwitchManualEnumInvalid, parent: SwitchManualEnumInvalid): SwitchManualEnumInvalid_Opcode =
  let this = new(SwitchManualEnumInvalid_Opcode)
  let root = if root == nil: cast[SwitchManualEnumInvalid](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.code = SwitchManualEnumInvalid_Opcode_CodeEnum(this.io.readU1())
  case this.code
  of SwitchManualEnumInvalid_Opcode_CodeEnum.intval:
    this.body = SwitchManualEnumInvalid_Opcode_Intval.read(this.io, this.root, this)
  of SwitchManualEnumInvalid_Opcode_CodeEnum.strval:
    this.body = SwitchManualEnumInvalid_Opcode_Strval.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[SwitchManualEnumInvalid_Opcode], filename: string): SwitchManualEnumInvalid_Opcode =
  SwitchManualEnumInvalid_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalid_OpcodeObj) =
  close(x.io)

## SwitchManualEnumInvalid
proc read*(_: typedesc[SwitchManualEnumInvalid], io: KaitaiStream, root: SwitchManualEnumInvalid, parent: ref RootObj): SwitchManualEnumInvalid =
  let this = new(SwitchManualEnumInvalid)
  let root = if root == nil: cast[SwitchManualEnumInvalid](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcodes = newSeq[SwitchManualEnumInvalid_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(SwitchManualEnumInvalid_Opcode.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[SwitchManualEnumInvalid], filename: string): SwitchManualEnumInvalid =
  SwitchManualEnumInvalid.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidObj) =
  close(x.io)

