import kaitai_struct_nim_runtime
import options

type
  SwitchElseOnly* = ref object of KaitaiStruct
    opcode*: int8
    primByte*: int8
    struct*: SwitchElseOnly_Data
    structSized*: SwitchElseOnly_Data
    parent*: KaitaiStruct
    rawStructSized*: seq[byte]
  SwitchElseOnly_Data* = ref object of KaitaiStruct
    value*: seq[byte]
    parent*: SwitchElseOnly

proc read*(_: typedesc[SwitchElseOnly], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchElseOnly
proc read*(_: typedesc[SwitchElseOnly_Data], io: KaitaiStream, root: KaitaiStruct, parent: SwitchElseOnly): SwitchElseOnly_Data


proc read*(_: typedesc[SwitchElseOnly], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchElseOnly =
  template this: untyped = result
  this = new(SwitchElseOnly)
  let root = if root == nil: cast[SwitchElseOnly](this) else: cast[SwitchElseOnly](root)
  this.io = io
  this.root = root
  this.parent = parent

  let opcodeExpr = this.io.readS1()
  this.opcode = opcodeExpr
  block:
    let on = this.opcode
    let primByteExpr = this.io.readS1()
    this.primByte = primByteExpr
  block:
    let on = this.opcode
    let structExpr = SwitchElseOnly_Data.read(this.io, this.root, this)
    this.struct = structExpr
  block:
    let on = this.opcode
    let rawStructSizedExpr = this.io.readBytes(int(4))
    this.rawStructSized = rawStructSizedExpr
    let rawStructSizedIo = newKaitaiStream(rawStructSizedExpr)
    let structSizedExpr = SwitchElseOnly_Data.read(rawStructSizedIo, this.root, this)
    this.structSized = structSizedExpr

proc fromFile*(_: typedesc[SwitchElseOnly], filename: string): SwitchElseOnly =
  SwitchElseOnly.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchElseOnly_Data], io: KaitaiStream, root: KaitaiStruct, parent: SwitchElseOnly): SwitchElseOnly_Data =
  template this: untyped = result
  this = new(SwitchElseOnly_Data)
  let root = if root == nil: cast[SwitchElseOnly](this) else: cast[SwitchElseOnly](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytes(int(4))
  this.value = valueExpr

proc fromFile*(_: typedesc[SwitchElseOnly_Data], filename: string): SwitchElseOnly_Data =
  SwitchElseOnly_Data.read(newKaitaiFileStream(filename), nil, nil)

