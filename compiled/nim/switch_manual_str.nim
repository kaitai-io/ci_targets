import kaitai_struct_nim_runtime
import options
import encodings

type
  SwitchManualStr_Opcode_Intval* = ref SwitchManualStr_Opcode_IntvalObj
  SwitchManualStr_Opcode_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchManualStr
    parent*: SwitchManualStr_Opcode
  SwitchManualStr_Opcode_Strval* = ref SwitchManualStr_Opcode_StrvalObj
  SwitchManualStr_Opcode_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchManualStr
    parent*: SwitchManualStr_Opcode
  SwitchManualStr_Opcode* = ref SwitchManualStr_OpcodeObj
  SwitchManualStr_OpcodeObj* = object
    code*: string
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchManualStr
    parent*: SwitchManualStr
  SwitchManualStr* = ref SwitchManualStrObj
  SwitchManualStrObj* = object
    opcodes*: seq[SwitchManualStr_Opcode]
    io*: KaitaiStream
    root*: SwitchManualStr
    parent*: ref RootObj

## SwitchManualStr_Opcode_Intval
proc read*(_: typedesc[SwitchManualStr_Opcode_Intval], io: KaitaiStream, root: SwitchManualStr, parent: SwitchManualStr_Opcode): SwitchManualStr_Opcode_Intval =
  let this = new(SwitchManualStr_Opcode_Intval)
  let root = if root == nil: cast[SwitchManualStr](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[SwitchManualStr_Opcode_Intval], filename: string): SwitchManualStr_Opcode_Intval =
  SwitchManualStr_Opcode_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStr_Opcode_IntvalObj) =
  close(x.io)

## SwitchManualStr_Opcode_Strval
proc read*(_: typedesc[SwitchManualStr_Opcode_Strval], io: KaitaiStream, root: SwitchManualStr, parent: SwitchManualStr_Opcode): SwitchManualStr_Opcode_Strval =
  let this = new(SwitchManualStr_Opcode_Strval)
  let root = if root == nil: cast[SwitchManualStr](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  result = this

proc fromFile*(_: typedesc[SwitchManualStr_Opcode_Strval], filename: string): SwitchManualStr_Opcode_Strval =
  SwitchManualStr_Opcode_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStr_Opcode_StrvalObj) =
  close(x.io)

## SwitchManualStr_Opcode
proc read*(_: typedesc[SwitchManualStr_Opcode], io: KaitaiStream, root: SwitchManualStr, parent: SwitchManualStr): SwitchManualStr_Opcode =
  let this = new(SwitchManualStr_Opcode)
  let root = if root == nil: cast[SwitchManualStr](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.code = convert(this.io.readBytes(int(1)), srcEncoding = "ASCII")
  case this.code
  of "I":
    this.body = SwitchManualStr_Opcode_Intval.read(this.io, this.root, this)
  of "S":
    this.body = SwitchManualStr_Opcode_Strval.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[SwitchManualStr_Opcode], filename: string): SwitchManualStr_Opcode =
  SwitchManualStr_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStr_OpcodeObj) =
  close(x.io)

## SwitchManualStr
proc read*(_: typedesc[SwitchManualStr], io: KaitaiStream, root: SwitchManualStr, parent: ref RootObj): SwitchManualStr =
  let this = new(SwitchManualStr)
  let root = if root == nil: cast[SwitchManualStr](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcodes = newSeq[SwitchManualStr_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(SwitchManualStr_Opcode.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[SwitchManualStr], filename: string): SwitchManualStr =
  SwitchManualStr.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchManualStrObj) =
  close(x.io)

