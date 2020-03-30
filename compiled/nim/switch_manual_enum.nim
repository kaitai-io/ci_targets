import kaitai_struct_nim_runtime
import options
import encodings

type
  SwitchManualEnum_Opcode_Intval* = ref SwitchManualEnum_Opcode_IntvalObj
  SwitchManualEnum_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchManualEnum
    parent*: SwitchManualEnum_Opcode
  SwitchManualEnum_Opcode_Strval* = ref SwitchManualEnum_Opcode_StrvalObj
  SwitchManualEnum_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchManualEnum
    parent*: SwitchManualEnum_Opcode
  SwitchManualEnum_Opcode* = ref SwitchManualEnum_OpcodeObj
  SwitchManualEnum_OpcodeObj* = object
    code*: SwitchManualEnum_Opcode_CodeEnum
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchManualEnum
    parent*: SwitchManualEnum
  SwitchManualEnum_Opcode_code_enum* = enum
    intval = 73
    strval = 83
  SwitchManualEnum* = ref SwitchManualEnumObj
  SwitchManualEnumObj* = object
    opcodes*: seq[SwitchManualEnum_Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnum
    parent*: ref RootObj

## SwitchManualEnum_Opcode_Intval
proc read*(_: typedesc[SwitchManualEnum_Opcode_Intval], io: KaitaiStream, root: SwitchManualEnum, parent: SwitchManualEnum_Opcode): SwitchManualEnum_Opcode_Intval =
  let this = new(SwitchManualEnum_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualEnum](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[SwitchManualEnum_Opcode_Intval], filename: string): SwitchManualEnum_Opcode_Intval =
  SwitchManualEnum_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnum_Opcode_IntvalObj) =
  close(x.io)

## SwitchManualEnum_Opcode_Strval
proc read*(_: typedesc[SwitchManualEnum_Opcode_Strval], io: KaitaiStream, root: SwitchManualEnum, parent: SwitchManualEnum_Opcode): SwitchManualEnum_Opcode_Strval =
  let this = new(SwitchManualEnum_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualEnum](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result = this

proc fromFile*(_: typedesc[SwitchManualEnum_Opcode_Strval], filename: string): SwitchManualEnum_Opcode_Strval =
  SwitchManualEnum_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnum_Opcode_StrvalObj) =
  close(x.io)

## SwitchManualEnum_Opcode
proc read*(_: typedesc[SwitchManualEnum_Opcode], io: KaitaiStream, root: SwitchManualEnum, parent: SwitchManualEnum): SwitchManualEnum_Opcode =
  let this = new(SwitchManualEnum_Opcode)
  let root = if root == nil: cast[SwitchManualEnum](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.code = SwitchManualEnum_Opcode_CodeEnum(this.io.readU1())
  case this.code
  of SwitchManualEnum_Opcode_CodeEnum.intval:
    this.body = SwitchManualEnum_Opcode_Intval.read(this.io, this.root, this)
  of SwitchManualEnum_Opcode_CodeEnum.strval:
    this.body = SwitchManualEnum_Opcode_Strval.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[SwitchManualEnum_Opcode], filename: string): SwitchManualEnum_Opcode =
  SwitchManualEnum_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnum_OpcodeObj) =
  close(x.io)

## SwitchManualEnum
proc read*(_: typedesc[SwitchManualEnum], io: KaitaiStream, root: SwitchManualEnum, parent: ref RootObj): SwitchManualEnum =
  let this = new(SwitchManualEnum)
  let root = if root == nil: cast[SwitchManualEnum](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcodes = newSeq[SwitchManualEnum_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(SwitchManualEnum_Opcode.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[SwitchManualEnum], filename: string): SwitchManualEnum =
  SwitchManualEnum.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumObj) =
  close(x.io)

