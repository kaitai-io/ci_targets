import kaitai_struct_nim_runtime
import options

type
  SwitchElseOnly* = ref object of KaitaiStruct
    `opcode`*: int8
    `primByte`*: int8
    `indicator`*: seq[byte]
    `ut`*: SwitchElseOnly_Data
    `parent`*: KaitaiStruct
  SwitchElseOnly_Data* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: SwitchElseOnly

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
  let indicatorExpr = this.io.readBytes(int(4))
  this.indicator = indicatorExpr
  block:
    let on = this.indicator
    let utExpr = SwitchElseOnly_Data.read(this.io, this.root, this)
    this.ut = utExpr

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

