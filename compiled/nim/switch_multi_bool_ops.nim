import kaitai_struct_nim_runtime
import options

type
  SwitchMultiBoolOps_Opcode* = ref SwitchMultiBoolOps_OpcodeObj
  SwitchMultiBoolOps_OpcodeObj* = object
    code*: uint8
    body*: uint64
    io*: KaitaiStream
    root*: SwitchMultiBoolOps
    parent*: SwitchMultiBoolOps
  SwitchMultiBoolOps* = ref SwitchMultiBoolOpsObj
  SwitchMultiBoolOpsObj* = object
    opcodes*: seq[SwitchMultiBoolOps_Opcode]
    io*: KaitaiStream
    root*: SwitchMultiBoolOps
    parent*: ref RootObj

### SwitchMultiBoolOps_Opcode ###
proc read*(_: typedesc[SwitchMultiBoolOps_Opcode], io: KaitaiStream, root: SwitchMultiBoolOps, parent: SwitchMultiBoolOps): SwitchMultiBoolOps_Opcode =
  let this = new(SwitchMultiBoolOps_Opcode)
  let root = if root == nil: cast[SwitchMultiBoolOps](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let code = this.io.readU1()
  this.code = code
  let body = uint64(this.io.readU1())
  this.body = body
  let body = uint64(this.io.readU2le())
  this.body = body
  let body = uint64(this.io.readU4le())
  this.body = body
  let body = this.io.readU8le()
  this.body = body
  result = this

proc fromFile*(_: typedesc[SwitchMultiBoolOps_Opcode], filename: string): SwitchMultiBoolOps_Opcode =
  SwitchMultiBoolOps_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchMultiBoolOps_OpcodeObj) =
  close(x.io)

### SwitchMultiBoolOps ###
proc read*(_: typedesc[SwitchMultiBoolOps], io: KaitaiStream, root: SwitchMultiBoolOps, parent: ref RootObj): SwitchMultiBoolOps =
  let this = new(SwitchMultiBoolOps)
  let root = if root == nil: cast[SwitchMultiBoolOps](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcodes = newSeq[SwitchMultiBoolOps_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(SwitchMultiBoolOps_Opcode.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[SwitchMultiBoolOps], filename: string): SwitchMultiBoolOps =
  SwitchMultiBoolOps.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchMultiBoolOpsObj) =
  close(x.io)

