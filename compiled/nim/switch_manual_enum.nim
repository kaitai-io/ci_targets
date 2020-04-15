import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(SwitchManualEnum_Opcode_code_enum)
const
  intval* = SwitchManualEnum_Opcode_code_enum(73)
  strval* = SwitchManualEnum_Opcode_code_enum(83)

type
  SwitchManualEnum* = ref object of KaitaiStruct
    opcodes*: seq[SwitchManualEnum_Opcode]
    parent*: KaitaiStruct
  SwitchManualEnum_Opcode* = ref object of KaitaiStruct
    code*: SwitchManualEnum_Opcode_CodeEnum
    body*: KaitaiStruct
    parent*: SwitchManualEnum
  SwitchManualEnum_Opcode_Intval* = ref object of KaitaiStruct
    value*: uint8
    parent*: SwitchManualEnum_Opcode
  SwitchManualEnum_Opcode_Strval* = ref object of KaitaiStruct
    value*: string
    parent*: SwitchManualEnum_Opcode

proc read*(_: typedesc[SwitchManualEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualEnum
proc read*(_: typedesc[SwitchManualEnum_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnum): SwitchManualEnum_Opcode
proc read*(_: typedesc[SwitchManualEnum_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnum_Opcode): SwitchManualEnum_Opcode_Intval
proc read*(_: typedesc[SwitchManualEnum_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnum_Opcode): SwitchManualEnum_Opcode_Strval


proc read*(_: typedesc[SwitchManualEnum], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualEnum =
  template this: untyped = result
  this = new(SwitchManualEnum)
  let root = if root == nil: cast[SwitchManualEnum](this) else: cast[SwitchManualEnum](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let opcodesExpr = SwitchManualEnum_Opcode.read(this.io, this.root, this)
      this.opcodes.add(opcodesExpr)
      inc i

proc fromFile*(_: typedesc[SwitchManualEnum], filename: string): SwitchManualEnum =
  SwitchManualEnum.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualEnum_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnum): SwitchManualEnum_Opcode =
  template this: untyped = result
  this = new(SwitchManualEnum_Opcode)
  let root = if root == nil: cast[SwitchManualEnum](this) else: cast[SwitchManualEnum](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = SwitchManualEnum_Opcode_CodeEnum(this.io.readU1())
  this.code = codeExpr
  case this.code
  of switch_manual_enum.intval:
    let bodyExpr = SwitchManualEnum_Opcode_Intval.read(this.io, this.root, this)
    this.body = bodyExpr
  of switch_manual_enum.strval:
    let bodyExpr = SwitchManualEnum_Opcode_Strval.read(this.io, this.root, this)
    this.body = bodyExpr
  else: discard

proc fromFile*(_: typedesc[SwitchManualEnum_Opcode], filename: string): SwitchManualEnum_Opcode =
  SwitchManualEnum_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualEnum_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnum_Opcode): SwitchManualEnum_Opcode_Intval =
  template this: untyped = result
  this = new(SwitchManualEnum_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualEnum](this) else: cast[SwitchManualEnum](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readU1()
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchManualEnum_Opcode_Intval], filename: string): SwitchManualEnum_Opcode_Intval =
  SwitchManualEnum_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualEnum_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualEnum_Opcode): SwitchManualEnum_Opcode_Strval =
  template this: untyped = result
  this = new(SwitchManualEnum_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualEnum](this) else: cast[SwitchManualEnum](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTerm(0, false, true, true), "ASCII")
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchManualEnum_Opcode_Strval], filename: string): SwitchManualEnum_Opcode_Strval =
  SwitchManualEnum_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

