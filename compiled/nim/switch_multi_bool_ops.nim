import kaitai_struct_nim_runtime

type
  SwitchMultiBoolOpsopcode* = ref SwitchMultiBoolOpsopcodeObj
  SwitchMultiBoolOpsopcodeObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchMultiBoolOps
    parent*: ref RootObj
  SwitchMultiBoolOps* = ref SwitchMultiBoolOpsObj
  SwitchMultiBoolOpsObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchMultiBoolOps
    parent*: ref RootObj

### SwitchMultiBoolOpsopcode ###
proc read*(_: typedesc[SwitchMultiBoolOpsopcode], io: KaitaiStream, root: SwitchMultiBoolOps, parent: SwitchMultiBoolOps): SwitchMultiBoolOpsopcode =
  result = new(SwitchMultiBoolOpsopcode)
  let root = if root == nil: cast[SwitchMultiBoolOps](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = result.io.readU1()
  result.body = uint64(result.io.readU1())
  result.body = uint64(result.io.readU2le())
  result.body = uint64(result.io.readU4le())
  result.body = result.io.readU8le()

proc fromFile*(_: typedesc[SwitchMultiBoolOpsopcode], filename: string): SwitchMultiBoolOpsopcode =
  SwitchMultiBoolOpsopcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchMultiBoolOpsopcodeObj) =
  close(x.io)

### SwitchMultiBoolOps ###
proc read*(_: typedesc[SwitchMultiBoolOps], io: KaitaiStream, root: SwitchMultiBoolOps, parent: ref RootObj): SwitchMultiBoolOps =
  result = new(SwitchMultiBoolOps)
  let root = if root == nil: cast[SwitchMultiBoolOps](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcodes = newSeq[Opcode]()
  block:
    var i: int
    while not result.io.eof:
      result.opcodes.add(Opcode.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchMultiBoolOps], filename: string): SwitchMultiBoolOps =
  SwitchMultiBoolOps.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchMultiBoolOpsObj) =
  close(x.io)

