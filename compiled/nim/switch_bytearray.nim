import kaitai_struct_nim_runtime
import options

type
  SwitchBytearray* = ref object of KaitaiStruct
    `opcodes`*: seq[SwitchBytearray_Opcode]
    `parent`*: KaitaiStruct
  SwitchBytearray_Opcode* = ref object of KaitaiStruct
    `code`*: seq[byte]
    `body`*: KaitaiStruct
    `parent`*: SwitchBytearray
  SwitchBytearray_Opcode_Intval* = ref object of KaitaiStruct
    `value`*: uint8
    `parent`*: SwitchBytearray_Opcode
  SwitchBytearray_Opcode_Strval* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: SwitchBytearray_Opcode

proc read*(_: typedesc[SwitchBytearray], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchBytearray
proc read*(_: typedesc[SwitchBytearray_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchBytearray): SwitchBytearray_Opcode
proc read*(_: typedesc[SwitchBytearray_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchBytearray_Opcode): SwitchBytearray_Opcode_Intval
proc read*(_: typedesc[SwitchBytearray_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchBytearray_Opcode): SwitchBytearray_Opcode_Strval


proc read*(_: typedesc[SwitchBytearray], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchBytearray =
  template this: untyped = result
  this = new(SwitchBytearray)
  let root = if root == nil: cast[SwitchBytearray](this) else: cast[SwitchBytearray](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = SwitchBytearray_Opcode.read(this.io, this.root, this)
      this.opcodes.add(it)
      inc i

proc fromFile*(_: typedesc[SwitchBytearray], filename: string): SwitchBytearray =
  SwitchBytearray.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchBytearray_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchBytearray): SwitchBytearray_Opcode =
  template this: untyped = result
  this = new(SwitchBytearray_Opcode)
  let root = if root == nil: cast[SwitchBytearray](this) else: cast[SwitchBytearray](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readBytes(int(1))
  this.code = codeExpr
  block:
    let on = this.code
    if on == @[73'u8]:
      let bodyExpr = SwitchBytearray_Opcode_Intval.read(this.io, this.root, this)
      this.body = bodyExpr
    elif on == @[83'u8]:
      let bodyExpr = SwitchBytearray_Opcode_Strval.read(this.io, this.root, this)
      this.body = bodyExpr

proc fromFile*(_: typedesc[SwitchBytearray_Opcode], filename: string): SwitchBytearray_Opcode =
  SwitchBytearray_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchBytearray_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchBytearray_Opcode): SwitchBytearray_Opcode_Intval =
  template this: untyped = result
  this = new(SwitchBytearray_Opcode_Intval)
  let root = if root == nil: cast[SwitchBytearray](this) else: cast[SwitchBytearray](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readU1()
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchBytearray_Opcode_Intval], filename: string): SwitchBytearray_Opcode_Intval =
  SwitchBytearray_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchBytearray_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchBytearray_Opcode): SwitchBytearray_Opcode_Strval =
  template this: untyped = result
  this = new(SwitchBytearray_Opcode_Strval)
  let root = if root == nil: cast[SwitchBytearray](this) else: cast[SwitchBytearray](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesTerm(0, false, true, true), "ASCII")
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchBytearray_Opcode_Strval], filename: string): SwitchBytearray_Opcode_Strval =
  SwitchBytearray_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

