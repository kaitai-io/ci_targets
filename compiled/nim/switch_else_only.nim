import kaitai_struct_nim_runtime
import options

type
  SwitchElseOnly_Data* = ref SwitchElseOnly_DataObj
  SwitchElseOnly_DataObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchElseOnly
    parent*: SwitchElseOnly
  SwitchElseOnly* = ref SwitchElseOnlyObj
  SwitchElseOnlyObj* = object
    opcode*: int8
    primByte*: int8
    struct*: SwitchElseOnly_Data
    structSized*: SwitchElseOnly_Data
    io*: KaitaiStream
    root*: SwitchElseOnly
    parent*: ref RootObj
    rawStructSized*: string

### SwitchElseOnly_Data ###
proc read*(_: typedesc[SwitchElseOnly_Data], io: KaitaiStream, root: SwitchElseOnly, parent: SwitchElseOnly): SwitchElseOnly_Data =
  let this = new(SwitchElseOnly_Data)
  let root = if root == nil: cast[SwitchElseOnly](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let value = this.io.readBytes(int(4))
  this.value = value
  result = this

proc fromFile*(_: typedesc[SwitchElseOnly_Data], filename: string): SwitchElseOnly_Data =
  SwitchElseOnly_Data.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchElseOnly_DataObj) =
  close(x.io)

### SwitchElseOnly ###
proc read*(_: typedesc[SwitchElseOnly], io: KaitaiStream, root: SwitchElseOnly, parent: ref RootObj): SwitchElseOnly =
  let this = new(SwitchElseOnly)
  let root = if root == nil: cast[SwitchElseOnly](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let opcode = this.io.readS1()
  this.opcode = opcode
  let primByte = this.io.readS1()
  this.primByte = primByte
  let struct = SwitchElseOnly_Data.read(this.io, this.root, this)
  this.struct = struct
  let rawStructSized = this.io.readBytes(int(4))
  this.rawStructSized = rawStructSized
  let rawStructSizedIo = newKaitaiStringStream(rawStructSized)
  let structSized = SwitchElseOnly_Data.read(rawStructSizedIo, this.root, this)
  this.structSized = structSized
  result = this

proc fromFile*(_: typedesc[SwitchElseOnly], filename: string): SwitchElseOnly =
  SwitchElseOnly.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchElseOnlyObj) =
  close(x.io)

