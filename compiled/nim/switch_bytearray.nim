import kaitai_struct_nim_runtime
import options
import encodings

type
  SwitchBytearray_Opcode_Intval* = ref SwitchBytearray_Opcode_IntvalObj
  SwitchBytearray_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchBytearray
    parent*: SwitchBytearray_Opcode
  SwitchBytearray_Opcode_Strval* = ref SwitchBytearray_Opcode_StrvalObj
  SwitchBytearray_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchBytearray
    parent*: SwitchBytearray_Opcode
  SwitchBytearray_Opcode* = ref SwitchBytearray_OpcodeObj
  SwitchBytearray_OpcodeObj* = object
    code*: string
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchBytearray
    parent*: SwitchBytearray
  SwitchBytearray* = ref SwitchBytearrayObj
  SwitchBytearrayObj* = object
    opcodes*: seq[SwitchBytearray_Opcode]
    io*: KaitaiStream
    root*: SwitchBytearray
    parent*: ref RootObj

### SwitchBytearray_Opcode_Intval ###
proc read*(_: typedesc[SwitchBytearray_Opcode_Intval], io: KaitaiStream, root: SwitchBytearray, parent: SwitchBytearray_Opcode): SwitchBytearray_Opcode_Intval =
  let this = new(SwitchBytearray_Opcode_Intval)
  let root = if root == nil: cast[SwitchBytearray](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let value = this.io.readU1()
  this.value = value
  result = this

proc fromFile*(_: typedesc[SwitchBytearray_Opcode_Intval], filename: string): SwitchBytearray_Opcode_Intval =
  SwitchBytearray_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchBytearray_Opcode_IntvalObj) =
  close(x.io)

### SwitchBytearray_Opcode_Strval ###
proc read*(_: typedesc[SwitchBytearray_Opcode_Strval], io: KaitaiStream, root: SwitchBytearray, parent: SwitchBytearray_Opcode): SwitchBytearray_Opcode_Strval =
  let this = new(SwitchBytearray_Opcode_Strval)
  let root = if root == nil: cast[SwitchBytearray](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let value = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  this.value = value
  result = this

proc fromFile*(_: typedesc[SwitchBytearray_Opcode_Strval], filename: string): SwitchBytearray_Opcode_Strval =
  SwitchBytearray_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchBytearray_Opcode_StrvalObj) =
  close(x.io)

### SwitchBytearray_Opcode ###
proc read*(_: typedesc[SwitchBytearray_Opcode], io: KaitaiStream, root: SwitchBytearray, parent: SwitchBytearray): SwitchBytearray_Opcode =
  let this = new(SwitchBytearray_Opcode)
  let root = if root == nil: cast[SwitchBytearray](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let code = this.io.readBytes(int(1))
  this.code = code
  let body = SwitchBytearray_Opcode_Intval.read(this.io, this.root, this)
  this.body = body
  let body = SwitchBytearray_Opcode_Strval.read(this.io, this.root, this)
  this.body = body
  result = this

proc fromFile*(_: typedesc[SwitchBytearray_Opcode], filename: string): SwitchBytearray_Opcode =
  SwitchBytearray_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchBytearray_OpcodeObj) =
  close(x.io)

### SwitchBytearray ###
proc read*(_: typedesc[SwitchBytearray], io: KaitaiStream, root: SwitchBytearray, parent: ref RootObj): SwitchBytearray =
  let this = new(SwitchBytearray)
  let root = if root == nil: cast[SwitchBytearray](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcodes = newSeq[SwitchBytearray_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(SwitchBytearray_Opcode.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[SwitchBytearray], filename: string): SwitchBytearray =
  SwitchBytearray.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchBytearrayObj) =
  close(x.io)

