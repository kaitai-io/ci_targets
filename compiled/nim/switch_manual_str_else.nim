import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  SwitchManualStrElse* = ref object of KaitaiStruct
    opcodes*: seq[SwitchManualStrElse_Opcode]
    parent*: KaitaiStruct
  SwitchManualStrElse_Opcode* = ref object of KaitaiStruct
    code*: string
    body*: KaitaiStruct
    parent*: SwitchManualStrElse
  SwitchManualStrElse_Opcode_Intval* = ref object of KaitaiStruct
    value*: uint8
    parent*: SwitchManualStrElse_Opcode
  SwitchManualStrElse_Opcode_Strval* = ref object of KaitaiStruct
    value*: string
    parent*: SwitchManualStrElse_Opcode
  SwitchManualStrElse_Opcode_Noneval* = ref object of KaitaiStruct
    filler*: uint32
    parent*: SwitchManualStrElse_Opcode

proc read*(_: typedesc[SwitchManualStrElse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualStrElse
proc read*(_: typedesc[SwitchManualStrElse_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualStrElse): SwitchManualStrElse_Opcode
proc read*(_: typedesc[SwitchManualStrElse_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualStrElse_Opcode): SwitchManualStrElse_Opcode_Intval
proc read*(_: typedesc[SwitchManualStrElse_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualStrElse_Opcode): SwitchManualStrElse_Opcode_Strval
proc read*(_: typedesc[SwitchManualStrElse_Opcode_Noneval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualStrElse_Opcode): SwitchManualStrElse_Opcode_Noneval


proc read*(_: typedesc[SwitchManualStrElse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualStrElse =
  template this: untyped = result
  this = new(SwitchManualStrElse)
  let root = if root == nil: cast[SwitchManualStrElse](this) else: cast[SwitchManualStrElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let opcodesExpr = SwitchManualStrElse_Opcode.read(this.io, this.root, this)
      this.opcodes.add(opcodesExpr)
      inc i

proc fromFile*(_: typedesc[SwitchManualStrElse], filename: string): SwitchManualStrElse =
  SwitchManualStrElse.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualStrElse_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualStrElse): SwitchManualStrElse_Opcode =
  template this: untyped = result
  this = new(SwitchManualStrElse_Opcode)
  let root = if root == nil: cast[SwitchManualStrElse](this) else: cast[SwitchManualStrElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = encode(this.io.readBytes(int(1)), "ASCII")
  this.code = codeExpr
  case this.code
  of "I":
    let bodyExpr = SwitchManualStrElse_Opcode_Intval.read(this.io, this.root, this)
    this.body = bodyExpr
  of "S":
    let bodyExpr = SwitchManualStrElse_Opcode_Strval.read(this.io, this.root, this)
    this.body = bodyExpr
  else:
    let bodyExpr = SwitchManualStrElse_Opcode_Noneval.read(this.io, this.root, this)
    this.body = bodyExpr

proc fromFile*(_: typedesc[SwitchManualStrElse_Opcode], filename: string): SwitchManualStrElse_Opcode =
  SwitchManualStrElse_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualStrElse_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualStrElse_Opcode): SwitchManualStrElse_Opcode_Intval =
  template this: untyped = result
  this = new(SwitchManualStrElse_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualStrElse](this) else: cast[SwitchManualStrElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readU1()
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchManualStrElse_Opcode_Intval], filename: string): SwitchManualStrElse_Opcode_Intval =
  SwitchManualStrElse_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualStrElse_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualStrElse_Opcode): SwitchManualStrElse_Opcode_Strval =
  template this: untyped = result
  this = new(SwitchManualStrElse_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualStrElse](this) else: cast[SwitchManualStrElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTerm(0, false, true, true), "ASCII")
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchManualStrElse_Opcode_Strval], filename: string): SwitchManualStrElse_Opcode_Strval =
  SwitchManualStrElse_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualStrElse_Opcode_Noneval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualStrElse_Opcode): SwitchManualStrElse_Opcode_Noneval =
  template this: untyped = result
  this = new(SwitchManualStrElse_Opcode_Noneval)
  let root = if root == nil: cast[SwitchManualStrElse](this) else: cast[SwitchManualStrElse](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fillerExpr = this.io.readU4le()
  this.filler = fillerExpr

proc fromFile*(_: typedesc[SwitchManualStrElse_Opcode_Noneval], filename: string): SwitchManualStrElse_Opcode_Noneval =
  SwitchManualStrElse_Opcode_Noneval.read(newKaitaiFileStream(filename), nil, nil)

