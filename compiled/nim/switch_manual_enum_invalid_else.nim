import kaitai_struct_nim_runtime
import options
import encodings

type
  SwitchManualEnumInvalidElse_Opcode_Intval* = ref SwitchManualEnumInvalidElse_Opcode_IntvalObj
  SwitchManualEnumInvalidElse_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: SwitchManualEnumInvalidElse_Opcode
  SwitchManualEnumInvalidElse_Opcode_Strval* = ref SwitchManualEnumInvalidElse_Opcode_StrvalObj
  SwitchManualEnumInvalidElse_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: SwitchManualEnumInvalidElse_Opcode
  SwitchManualEnumInvalidElse_Opcode_Defval* = ref SwitchManualEnumInvalidElse_Opcode_DefvalObj
  SwitchManualEnumInvalidElse_Opcode_DefvalObj* = object
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: SwitchManualEnumInvalidElse_Opcode
    valueInst*: Option[int8]
  SwitchManualEnumInvalidElse_Opcode* = ref SwitchManualEnumInvalidElse_OpcodeObj
  SwitchManualEnumInvalidElse_OpcodeObj* = object
    code*: SwitchManualEnumInvalidElse_Opcode_CodeEnum
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: SwitchManualEnumInvalidElse
  SwitchManualEnumInvalidElse_Opcode_code_enum* = enum
    intval = 73
    strval = 83
  SwitchManualEnumInvalidElse* = ref SwitchManualEnumInvalidElseObj
  SwitchManualEnumInvalidElseObj* = object
    opcodes*: seq[SwitchManualEnumInvalidElse_Opcode]
    io*: KaitaiStream
    root*: SwitchManualEnumInvalidElse
    parent*: ref RootObj

## SwitchManualEnumInvalidElse_Opcode_Intval
proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Intval], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: SwitchManualEnumInvalidElse_Opcode): SwitchManualEnumInvalidElse_Opcode_Intval =
  let this = new(SwitchManualEnumInvalidElse_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Intval], filename: string): SwitchManualEnumInvalidElse_Opcode_Intval =
  SwitchManualEnumInvalidElse_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElse_Opcode_IntvalObj) =
  close(x.io)

## SwitchManualEnumInvalidElse_Opcode_Strval
proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Strval], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: SwitchManualEnumInvalidElse_Opcode): SwitchManualEnumInvalidElse_Opcode_Strval =
  let this = new(SwitchManualEnumInvalidElse_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result = this

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Strval], filename: string): SwitchManualEnumInvalidElse_Opcode_Strval =
  SwitchManualEnumInvalidElse_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElse_Opcode_StrvalObj) =
  close(x.io)

## SwitchManualEnumInvalidElse_Opcode_Defval
proc value*(this: SwitchManualEnumInvalidElse_Opcode_Defval): int8
proc value(this: SwitchManualEnumInvalidElse_Opcode_Defval): int8 = 
  if isSome(this.valueInst):
    return get(this.valueInst)
  this.valueInst = some(123)
  return get(this.valueInst)

proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Defval], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: SwitchManualEnumInvalidElse_Opcode): SwitchManualEnumInvalidElse_Opcode_Defval =
  let this = new(SwitchManualEnumInvalidElse_Opcode_Defval)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Defval], filename: string): SwitchManualEnumInvalidElse_Opcode_Defval =
  SwitchManualEnumInvalidElse_Opcode_Defval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElse_Opcode_DefvalObj) =
  close(x.io)

## SwitchManualEnumInvalidElse_Opcode
proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: SwitchManualEnumInvalidElse): SwitchManualEnumInvalidElse_Opcode =
  let this = new(SwitchManualEnumInvalidElse_Opcode)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.code = SwitchManualEnumInvalidElse_Opcode_CodeEnum(this.io.readU1())
  case this.code
  of SwitchManualEnumInvalidElse_Opcode_CodeEnum.intval:
    this.body = SwitchManualEnumInvalidElse_Opcode_Intval.read(this.io, this.root, this)
  of SwitchManualEnumInvalidElse_Opcode_CodeEnum.strval:
    this.body = SwitchManualEnumInvalidElse_Opcode_Strval.read(this.io, this.root, this)
  else:
  this.body = SwitchManualEnumInvalidElse_Opcode_Defval.read(this.io, this.root, this)
result = this

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse_Opcode], filename: string): SwitchManualEnumInvalidElse_Opcode =
SwitchManualEnumInvalidElse_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElse_OpcodeObj) =
close(x.io)

## SwitchManualEnumInvalidElse
proc read*(_: typedesc[SwitchManualEnumInvalidElse], io: KaitaiStream, root: SwitchManualEnumInvalidElse, parent: ref RootObj): SwitchManualEnumInvalidElse =
let this = new(SwitchManualEnumInvalidElse)
let root = if root == nil: cast[SwitchManualEnumInvalidElse](result) else: root
this.io = io
this.root = root
this.parent = parent

this.opcodes = newSeq[SwitchManualEnumInvalidElse_Opcode]()
block:
  var i: int
  while not this.io.eof:
    this.opcodes.add(SwitchManualEnumInvalidElse_Opcode.read(this.io, this.root, this))
    inc i
result = this

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse], filename: string): SwitchManualEnumInvalidElse =
SwitchManualEnumInvalidElse.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualEnumInvalidElseObj) =
close(x.io)

