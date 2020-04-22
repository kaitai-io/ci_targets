import kaitai_struct_nim_runtime
import options

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
  let root = if root == nil: cast[SwitchIntegers](this) else: cast[SwitchIntegers](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = SwitchIntegers_Opcode.read(this.io, this.root, this)
      this.opcodes.add(it)
      inc i

proc fromFile*(_: typedesc[SwitchIntegers], filename: string): SwitchIntegers =
  SwitchIntegers.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchIntegers_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchIntegers): SwitchIntegers_Opcode =
  template this: untyped = result
  this = new(SwitchIntegers_Opcode)
  let root = if root == nil: cast[SwitchIntegers](this) else: cast[SwitchIntegers](root)
  this.io = io
  this.root = root
  this.parent = parent

  let codeExpr = this.io.readU1()
  this.code = codeExpr
  block:
    let on = this.code
    if on == 1:
      let bodyExpr = uint64(this.io.readU1())
      this.body = bodyExpr
    elif on == 2:
      let bodyExpr = uint64(this.io.readU2le())
      this.body = bodyExpr
    elif on == 4:
      let bodyExpr = uint64(this.io.readU4le())
      this.body = bodyExpr
    elif on == 8:
      let bodyExpr = this.io.readU8le()
      this.body = bodyExpr

proc fromFile*(_: typedesc[SwitchIntegers_Opcode], filename: string): SwitchIntegers_Opcode =
  SwitchIntegers_Opcode.read(newKaitaiFileStream(filename), nil, nil)

