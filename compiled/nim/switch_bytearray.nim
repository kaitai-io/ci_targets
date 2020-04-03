import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  SwitchBytearray* = ref object of KaitaiStruct
    opcodes*: seq[SwitchBytearray_Opcode]
    parent*: KaitaiStruct
  SwitchBytearray_Opcode* = ref object of KaitaiStruct
    code*: string
    body*: KaitaiStruct
    parent*: SwitchBytearray
  SwitchBytearray_Opcode_Intval* = ref object of KaitaiStruct
    value*: uint8
    parent*: SwitchBytearray_Opcode
  SwitchBytearray_Opcode_Strval* = ref object of KaitaiStruct
    value*: string
    parent*: SwitchBytearray_Opcode

proc read*(_: typedesc[SwitchBytearray], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchBytearray
proc read*(_: typedesc[SwitchBytearray_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchBytearray): SwitchBytearray_Opcode
proc read*(_: typedesc[SwitchBytearray_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchBytearray_Opcode): SwitchBytearray_Opcode_Intval
proc read*(_: typedesc[SwitchBytearray_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchBytearray_Opcode): SwitchBytearray_Opcode_Strval


proc read*(_: typedesc[SwitchBytearray], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchBytearray =
  template this: untyped = result
  this = new(SwitchBytearray)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcodes = newSeqOfCap[SwitchBytearray_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(SwitchBytearray_Opcode.read(this.io, this.root, this))
      inc i

proc fromFile*(_: typedesc[SwitchBytearray], filename: string): SwitchBytearray =
  SwitchBytearray.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchBytearray_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchBytearray): SwitchBytearray_Opcode =
  template this: untyped = result
  this = new(SwitchBytearray_Opcode)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.code = this.io.readBytes(int(1))
  case this.code
  of @[73'i8, ].toString:
    this.body = SwitchBytearray_Opcode_Intval.read(this.io, this.root, this)
  of @[83'i8, ].toString:
    this.body = SwitchBytearray_Opcode_Strval.read(this.io, this.root, this)
  else: discard

proc fromFile*(_: typedesc[SwitchBytearray_Opcode], filename: string): SwitchBytearray_Opcode =
  SwitchBytearray_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchBytearray_Opcode_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchBytearray_Opcode): SwitchBytearray_Opcode_Intval =
  template this: untyped = result
  this = new(SwitchBytearray_Opcode_Intval)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = this.io.readU1()

proc fromFile*(_: typedesc[SwitchBytearray_Opcode_Intval], filename: string): SwitchBytearray_Opcode_Intval =
  SwitchBytearray_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchBytearray_Opcode_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchBytearray_Opcode): SwitchBytearray_Opcode_Strval =
  template this: untyped = result
  this = new(SwitchBytearray_Opcode_Strval)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[SwitchBytearray_Opcode_Strval], filename: string): SwitchBytearray_Opcode_Strval =
  SwitchBytearray_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

