import kaitai_struct_nim_runtime
import options

type
  SwitchManualEnumInvalidElse* = ref object of KaitaiStruct
    `opcodes`*: seq[SwitchManualEnumInvalidElse_Opcode]
    `parent`*: KaitaiStruct
  SwitchManualEnumInvalidElse_Opcode* = ref object of KaitaiStruct
    `code`*: SwitchManualEnumInvalidElse_Opcode_CodeEnum
    `body`*: KaitaiStruct
    `parent`*: SwitchManualEnumInvalidElse
  SwitchManualEnumInvalidElse_Opcode_CodeEnum* = enum
    intval = 73
    strval = 83
  SwitchManualEnumInvalidElse_Opcode_Defval* = ref object of KaitaiStruct
    `parent`*: SwitchManualEnumInvalidElse_Opcode
    `valueInst`: int8
    `valueInstFlag`: bool
  SwitchManualEnumInvalidElse_Opcode_Intval* = ref object of KaitaiStruct
    `value`*: uint8
    `parent`*: SwitchManualEnumInvalidElse_Opcode
  SwitchManualEnumInvalidElse_Opcode_Strval* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: SwitchManualEnumInvalidElse_Opcode

proc read*(_: typedesc[SwitchManualEnumInvalidElse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualEnumInvalidElse
proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalidElse): SwitchManualEnumInvalidElse_Opcode
proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Defval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalidElse_Opcode): SwitchManualEnumInvalidElse_Opcode_Defval
proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalidElse_Opcode): SwitchManualEnumInvalidElse_Opcode_Intval
proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalidElse_Opcode): SwitchManualEnumInvalidElse_Opcode_Strval

proc value*(this: SwitchManualEnumInvalidElse_Opcode_Defval): int8

proc read*(_: typedesc[SwitchManualEnumInvalidElse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualEnumInvalidElse =
  template this: untyped = result
  this = new(SwitchManualEnumInvalidElse)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](this) else: cast[SwitchManualEnumInvalidElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = SwitchManualEnumInvalidElse_Opcode.read(this.io, this.root, this)
      this.opcodes.add(it)
      inc i

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse], filename: string): SwitchManualEnumInvalidElse =
  SwitchManualEnumInvalidElse.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalidElse): SwitchManualEnumInvalidElse_Opcode =
  template this: untyped = result
  this = new(SwitchManualEnumInvalidElse_Opcode)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](this) else: cast[SwitchManualEnumInvalidElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = SwitchManualEnumInvalidElse_Opcode_CodeEnum(this.io.readU1())
  this.code = codeExpr
  block:
    let on = this.code
    if on == switch_manual_enum_invalid_else.intval:
      let bodyExpr = SwitchManualEnumInvalidElse_Opcode_Intval.read(this.io, this.root, this)
      this.body = bodyExpr
    elif on == switch_manual_enum_invalid_else.strval:
      let bodyExpr = SwitchManualEnumInvalidElse_Opcode_Strval.read(this.io, this.root, this)
      this.body = bodyExpr
    else:
      let bodyExpr = SwitchManualEnumInvalidElse_Opcode_Defval.read(this.io, this.root, this)
      this.body = bodyExpr

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse_Opcode], filename: string): SwitchManualEnumInvalidElse_Opcode =
  SwitchManualEnumInvalidElse_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Defval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalidElse_Opcode): SwitchManualEnumInvalidElse_Opcode_Defval =
  template this: untyped = result
  this = new(SwitchManualEnumInvalidElse_Opcode_Defval)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](this) else: cast[SwitchManualEnumInvalidElse](root)
  this.io = io
  this.root = root
  this.parent = parent


proc value(this: SwitchManualEnumInvalidElse_Opcode_Defval): int8 = 
  if this.valueInstFlag:
    return this.valueInst
  let valueInstExpr = int8(123)
  this.valueInst = valueInstExpr
  this.valueInstFlag = true
  return this.valueInst

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Defval], filename: string): SwitchManualEnumInvalidElse_Opcode_Defval =
  SwitchManualEnumInvalidElse_Opcode_Defval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalidElse_Opcode): SwitchManualEnumInvalidElse_Opcode_Intval =
  template this: untyped = result
  this = new(SwitchManualEnumInvalidElse_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](this) else: cast[SwitchManualEnumInvalidElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readU1()
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Intval], filename: string): SwitchManualEnumInvalidElse_Opcode_Intval =
  SwitchManualEnumInvalidElse_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnumInvalidElse_Opcode): SwitchManualEnumInvalidElse_Opcode_Strval =
  template this: untyped = result
  this = new(SwitchManualEnumInvalidElse_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualEnumInvalidElse](this) else: cast[SwitchManualEnumInvalidElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTerm(0, false, true, true), "ASCII")
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchManualEnumInvalidElse_Opcode_Strval], filename: string): SwitchManualEnumInvalidElse_Opcode_Strval =
  SwitchManualEnumInvalidElse_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

