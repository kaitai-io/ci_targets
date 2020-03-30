import kaitai_struct_nim_runtime
import options

type
  SwitchIntegers_Opcode* = ref SwitchIntegers_OpcodeObj
  SwitchIntegers_OpcodeObj* = object
    code*: uint8
    body*: uint64
    io*: KaitaiStream
    root*: SwitchIntegers
    parent*: SwitchIntegers
  SwitchIntegers* = ref SwitchIntegersObj
  SwitchIntegersObj* = object
    opcodes*: seq[SwitchIntegers_Opcode]
    io*: KaitaiStream
    root*: SwitchIntegers
    parent*: ref RootObj

## SwitchIntegers_Opcode
proc read*(_: typedesc[SwitchIntegers_Opcode], io: KaitaiStream, root: SwitchIntegers, parent: SwitchIntegers): SwitchIntegers_Opcode =
  let this = new(SwitchIntegers_Opcode)
  let root = if root == nil: cast[SwitchIntegers](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.code = this.io.readU1()
  case this.code
  of 1:
    this.body = uint64(this.io.readU1())
  of 2:
    this.body = uint64(this.io.readU2le())
  of 4:
    this.body = uint64(this.io.readU4le())
  of 8:
    this.body = this.io.readU8le()
  result = this

proc fromFile*(_: typedesc[SwitchIntegers_Opcode], filename: string): SwitchIntegers_Opcode =
  SwitchIntegers_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchIntegers_OpcodeObj) =
  close(x.io)

## SwitchIntegers
proc read*(_: typedesc[SwitchIntegers], io: KaitaiStream, root: SwitchIntegers, parent: ref RootObj): SwitchIntegers =
  let this = new(SwitchIntegers)
  let root = if root == nil: cast[SwitchIntegers](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcodes = newSeq[SwitchIntegers_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(SwitchIntegers_Opcode.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[SwitchIntegers], filename: string): SwitchIntegers =
  SwitchIntegers.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchIntegersObj) =
  close(x.io)

