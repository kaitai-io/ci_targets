import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  SwitchIntegers* = ref object of KaitaiStruct
    opcodes*: seq[SwitchIntegers_Opcode]
    parent*: KaitaiStruct
  SwitchIntegers_Opcode* = ref object of KaitaiStruct
    code*: uint8
    body*: uint64
    parent*: SwitchIntegers

proc read*(_: typedesc[SwitchIntegers], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchIntegers
proc read*(_: typedesc[SwitchIntegers_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchIntegers): SwitchIntegers_Opcode

proc read*(_: typedesc[SwitchIntegers], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchIntegers =
  template this: untyped = result
  this = new(SwitchIntegers)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcodes = newSeq[SwitchIntegers_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(SwitchIntegers_Opcode.read(this.io, this.root, this))
      inc i

proc fromFile*(_: typedesc[SwitchIntegers], filename: string): SwitchIntegers =
  SwitchIntegers.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchIntegers_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchIntegers): SwitchIntegers_Opcode =
  template this: untyped = result
  this = new(SwitchIntegers_Opcode)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
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
  else: discard

proc fromFile*(_: typedesc[SwitchIntegers_Opcode], filename: string): SwitchIntegers_Opcode =
  SwitchIntegers_Opcode.read(newKaitaiFileStream(filename), nil, nil)

