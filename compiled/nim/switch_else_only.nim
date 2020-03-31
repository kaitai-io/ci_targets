import kaitai_struct_nim_runtime
import options

type
  SwitchElseOnly* = ref object of KaitaiStruct
    opcode*: int8
    primByte*: int8
    struct*: SwitchElseOnly_Data
    structSized*: SwitchElseOnly_Data
    parent*: KaitaiStruct
    rawStructSized*: string
  SwitchElseOnly_Data* = ref object of KaitaiStruct
    value*: string
    parent*: SwitchElseOnly

proc read*(_: typedesc[SwitchElseOnly_Data], io: KaitaiStream, root: KaitaiStruct, parent: SwitchElseOnly): SwitchElseOnly_Data =
  template this: untyped = result
  this = new(SwitchElseOnly_Data)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.value = this.io.readBytes(int(4))

proc fromFile*(_: typedesc[SwitchElseOnly_Data], filename: string): SwitchElseOnly_Data =
  SwitchElseOnly_Data.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchElseOnly], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchElseOnly =
  template this: untyped = result
  this = new(SwitchElseOnly)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.opcode = this.io.readS1()

  ##[
  ]##
  case this.opcode
  else:
    this.primByte = this.io.readS1()

  ##[
  ]##
  case this.opcode
  else:
    this.struct = SwitchElseOnly_Data.read(this.io, this.root, this)

  ##[
  ]##
  case this.opcode
  else:
    this.rawStructSized = this.io.readBytes(int(4))
    let rawStructSizedIo = newKaitaiStringStream(this.rawStructSized)
    this.structSized = SwitchElseOnly_Data.read(rawStructSizedIo, this.root, this)

proc fromFile*(_: typedesc[SwitchElseOnly], filename: string): SwitchElseOnly =
  SwitchElseOnly.read(newKaitaiFileStream(filename), nil, nil)

