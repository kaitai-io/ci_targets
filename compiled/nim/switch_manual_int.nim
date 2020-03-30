import kaitai_struct_nim_runtime
import options
import encodings

type
  SwitchManualInt_Opcode_Intval* = ref SwitchManualInt_Opcode_IntvalObj
  SwitchManualInt_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchManualInt
    parent*: SwitchManualInt_Opcode
  SwitchManualInt_Opcode_Strval* = ref SwitchManualInt_Opcode_StrvalObj
  SwitchManualInt_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchManualInt
    parent*: SwitchManualInt_Opcode
  SwitchManualInt_Opcode* = ref SwitchManualInt_OpcodeObj
  SwitchManualInt_OpcodeObj* = object
    code*: uint8
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchManualInt
    parent*: SwitchManualInt
  SwitchManualInt* = ref SwitchManualIntObj
  SwitchManualIntObj* = object
    opcodes*: seq[SwitchManualInt_Opcode]
    io*: KaitaiStream
    root*: SwitchManualInt
    parent*: ref RootObj

### SwitchManualInt_Opcode_Intval ###
proc read*(_: typedesc[SwitchManualInt_Opcode_Intval], io: KaitaiStream, root: SwitchManualInt, parent: SwitchManualInt_Opcode): SwitchManualInt_Opcode_Intval =
  let this = new(SwitchManualInt_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualInt](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let value = this.io.readU1()
  this.value = value
  result = this

proc fromFile*(_: typedesc[SwitchManualInt_Opcode_Intval], filename: string): SwitchManualInt_Opcode_Intval =
  SwitchManualInt_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualInt_Opcode_IntvalObj) =
  close(x.io)

### SwitchManualInt_Opcode_Strval ###
proc read*(_: typedesc[SwitchManualInt_Opcode_Strval], io: KaitaiStream, root: SwitchManualInt, parent: SwitchManualInt_Opcode): SwitchManualInt_Opcode_Strval =
  let this = new(SwitchManualInt_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualInt](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let value = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  this.value = value
  result = this

proc fromFile*(_: typedesc[SwitchManualInt_Opcode_Strval], filename: string): SwitchManualInt_Opcode_Strval =
  SwitchManualInt_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualInt_Opcode_StrvalObj) =
  close(x.io)

### SwitchManualInt_Opcode ###
proc read*(_: typedesc[SwitchManualInt_Opcode], io: KaitaiStream, root: SwitchManualInt, parent: SwitchManualInt): SwitchManualInt_Opcode =
  let this = new(SwitchManualInt_Opcode)
  let root = if root == nil: cast[SwitchManualInt](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let code = this.io.readU1()
  this.code = code
  let body = SwitchManualInt_Opcode_Intval.read(this.io, this.root, this)
  this.body = body
  let body = SwitchManualInt_Opcode_Strval.read(this.io, this.root, this)
  this.body = body
  result = this

proc fromFile*(_: typedesc[SwitchManualInt_Opcode], filename: string): SwitchManualInt_Opcode =
  SwitchManualInt_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualInt_OpcodeObj) =
  close(x.io)

### SwitchManualInt ###
proc read*(_: typedesc[SwitchManualInt], io: KaitaiStream, root: SwitchManualInt, parent: ref RootObj): SwitchManualInt =
  let this = new(SwitchManualInt)
  let root = if root == nil: cast[SwitchManualInt](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcodes = newSeq[SwitchManualInt_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(SwitchManualInt_Opcode.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[SwitchManualInt], filename: string): SwitchManualInt =
  SwitchManualInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualIntObj) =
  close(x.io)

