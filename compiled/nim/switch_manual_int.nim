import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  SwitchManualInt* = ref object of KaitaiStruct
    opcodes*: seq[SwitchManualInt_Opcode]
    parent*: KaitaiStruct
  SwitchManualInt_Opcode* = ref object of KaitaiStruct
    code*: uint8
    body*: KaitaiStruct
    parent*: SwitchManualInt
  SwitchManualInt_Opcode_Intval* = ref object of KaitaiStruct
    value*: uint8
    parent*: SwitchManualInt_Opcode
  SwitchManualInt_Opcode_Strval* = ref object of KaitaiStruct
    value*: string
    parent*: SwitchManualInt_Opcode

proc read*(_: typedesc[SwitchManualInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualInt
proc read*(_: typedesc[SwitchManualInt_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualInt): SwitchManualInt_Opcode
proc read*(_: typedesc[SwitchManualInt_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualInt_Opcode): SwitchManualInt_Opcode_Intval
proc read*(_: typedesc[SwitchManualInt_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualInt_Opcode): SwitchManualInt_Opcode_Strval


proc read*(_: typedesc[SwitchManualInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchManualInt =
  template this: untyped = result
  this = new(SwitchManualInt)
  let root = if root == nil: cast[SwitchManualInt](this) else: cast[SwitchManualInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      this.opcodes.add(SwitchManualInt_Opcode.read(this.io, this.root, this))
      inc i

proc fromFile*(_: typedesc[SwitchManualInt], filename: string): SwitchManualInt =
  SwitchManualInt.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualInt_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualInt): SwitchManualInt_Opcode =
  template this: untyped = result
  this = new(SwitchManualInt_Opcode)
  let root = if root == nil: cast[SwitchManualInt](this) else: cast[SwitchManualInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.code = this.io.readU1()
  case ord(this.code)
  of 73:
    this.body = SwitchManualInt_Opcode_Intval.read(this.io, this.root, this)
  of 83:
    this.body = SwitchManualInt_Opcode_Strval.read(this.io, this.root, this)
  else: discard

proc fromFile*(_: typedesc[SwitchManualInt_Opcode], filename: string): SwitchManualInt_Opcode =
  SwitchManualInt_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualInt_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualInt_Opcode): SwitchManualInt_Opcode_Intval =
  template this: untyped = result
  this = new(SwitchManualInt_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualInt](this) else: cast[SwitchManualInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.value = this.io.readU1()

proc fromFile*(_: typedesc[SwitchManualInt_Opcode_Intval], filename: string): SwitchManualInt_Opcode_Intval =
  SwitchManualInt_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchManualInt_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchManualInt_Opcode): SwitchManualInt_Opcode_Strval =
  template this: untyped = result
  this = new(SwitchManualInt_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualInt](this) else: cast[SwitchManualInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.value = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[SwitchManualInt_Opcode_Strval], filename: string): SwitchManualInt_Opcode_Strval =
  SwitchManualInt_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

