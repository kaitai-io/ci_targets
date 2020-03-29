import kaitai_struct_nim_runtime

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
  result = new(SwitchMultiBoolOps_Opcode)
  let root = if root == nil: cast[SwitchMultiBoolOps](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let code = io.readU1()
  result.code = code
  let body = uint64(io.readU1())
  result.body = body
  let body = uint64(io.readU2le())
  result.body = body
  let body = uint64(io.readU4le())
  result.body = body
  let body = io.readU8le()
  result.body = body

proc fromFile*(_: typedesc[SwitchMultiBoolOps_Opcode], filename: string): SwitchMultiBoolOps_Opcode =
  SwitchMultiBoolOps_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchMultiBoolOps_OpcodeObj) =
  close(x.io)

### SwitchMultiBoolOps ###
proc read*(_: typedesc[SwitchMultiBoolOps], io: KaitaiStream, root: SwitchMultiBoolOps, parent: ref RootObj): SwitchMultiBoolOps =
  result = new(SwitchMultiBoolOps)
  let root = if root == nil: cast[SwitchMultiBoolOps](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  opcodes = newSeq[SwitchMultiBoolOps_Opcode]()
  block:
    var i: int
    while not io.eof:
      opcodes.add(SwitchMultiBoolOps_Opcode.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchMultiBoolOps], filename: string): SwitchMultiBoolOps =
  SwitchMultiBoolOps.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchMultiBoolOpsObj) =
  close(x.io)

