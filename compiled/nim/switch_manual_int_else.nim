import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  SwitchManualIntElse* = ref object of KaitaiStruct
    opcodes*: seq[SwitchManualIntElse_Opcode]
    parent*: KaitaiStruct
  SwitchManualIntElse_Opcode* = ref object of KaitaiStruct
    code*: uint8
    body*: KaitaiStruct
    parent*: SwitchManualIntElse
  SwitchManualIntElse_Opcode_Intval* = ref object of KaitaiStruct
    value*: uint8
    parent*: SwitchManualIntElse_Opcode
  SwitchManualIntElse_Opcode_Strval* = ref object of KaitaiStruct
    value*: string
    parent*: SwitchManualIntElse_Opcode
  SwitchManualIntElse_Opcode_Noneval* = ref object of KaitaiStruct
    filler*: uint32
    parent*: SwitchManualIntElse_Opcode

proc read*(_: typedesc[SwitchManualIntElse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualIntElse
proc read*(_: typedesc[SwitchManualIntElse_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntElse): SwitchManualIntElse_Opcode
proc read*(_: typedesc[SwitchManualIntElse_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntElse_Opcode): SwitchManualIntElse_Opcode_Intval
proc read*(_: typedesc[SwitchManualIntElse_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntElse_Opcode): SwitchManualIntElse_Opcode_Strval
proc read*(_: typedesc[SwitchManualIntElse_Opcode_Noneval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntElse_Opcode): SwitchManualIntElse_Opcode_Noneval


proc read*(_: typedesc[SwitchManualIntElse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualIntElse =
  template this: untyped = result
  this = new(SwitchManualIntElse)
  let root = if root == nil: cast[SwitchManualIntElse](this) else: cast[SwitchManualIntElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let opcodesExpr = SwitchManualIntElse_Opcode.read(this.io, this.root, this)
      this.opcodes.add(opcodesExpr)
      inc i

proc fromFile*(_: typedesc[SwitchManualIntElse], filename: string): SwitchManualIntElse =
  SwitchManualIntElse.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntElse_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntElse): SwitchManualIntElse_Opcode =
  template this: untyped = result
  this = new(SwitchManualIntElse_Opcode)
  let root = if root == nil: cast[SwitchManualIntElse](this) else: cast[SwitchManualIntElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readU1()
  this.code = codeExpr
  case ord(this.code)
  of 73:
    let bodyExpr = SwitchManualIntElse_Opcode_Intval.read(this.io, this.root, this)
    this.body = bodyExpr
  of 83:
    let bodyExpr = SwitchManualIntElse_Opcode_Strval.read(this.io, this.root, this)
    this.body = bodyExpr
  else:
    let bodyExpr = SwitchManualIntElse_Opcode_Noneval.read(this.io, this.root, this)
    this.body = bodyExpr

proc fromFile*(_: typedesc[SwitchManualIntElse_Opcode], filename: string): SwitchManualIntElse_Opcode =
  SwitchManualIntElse_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntElse_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntElse_Opcode): SwitchManualIntElse_Opcode_Intval =
  template this: untyped = result
  this = new(SwitchManualIntElse_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualIntElse](this) else: cast[SwitchManualIntElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readU1()
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchManualIntElse_Opcode_Intval], filename: string): SwitchManualIntElse_Opcode_Intval =
  SwitchManualIntElse_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntElse_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntElse_Opcode): SwitchManualIntElse_Opcode_Strval =
  template this: untyped = result
  this = new(SwitchManualIntElse_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualIntElse](this) else: cast[SwitchManualIntElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTerm(0, false, true, true), "ASCII")
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchManualIntElse_Opcode_Strval], filename: string): SwitchManualIntElse_Opcode_Strval =
  SwitchManualIntElse_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualIntElse_Opcode_Noneval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualIntElse_Opcode): SwitchManualIntElse_Opcode_Noneval =
  template this: untyped = result
  this = new(SwitchManualIntElse_Opcode_Noneval)
  let root = if root == nil: cast[SwitchManualIntElse](this) else: cast[SwitchManualIntElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fillerExpr = this.io.readU4le()
  this.filler = fillerExpr

proc fromFile*(_: typedesc[SwitchManualIntElse_Opcode_Noneval], filename: string): SwitchManualIntElse_Opcode_Noneval =
  SwitchManualIntElse_Opcode_Noneval.read(newKaitaiFileStream(filename), nil, nil)

