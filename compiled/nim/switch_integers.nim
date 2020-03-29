import kaitai_struct_nim_runtime

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

### SwitchIntegers_Opcode ###
proc read*(_: typedesc[SwitchIntegers_Opcode], io: KaitaiStream, root: SwitchIntegers, parent: SwitchIntegers): SwitchIntegers_Opcode =
  result = new(SwitchIntegers_Opcode)
  let root = if root == nil: cast[SwitchIntegers](result) else: root
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

proc fromFile*(_: typedesc[SwitchIntegers_Opcode], filename: string): SwitchIntegers_Opcode =
  SwitchIntegers_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchIntegers_OpcodeObj) =
  close(x.io)

### SwitchIntegers ###
proc read*(_: typedesc[SwitchIntegers], io: KaitaiStream, root: SwitchIntegers, parent: ref RootObj): SwitchIntegers =
  result = new(SwitchIntegers)
  let root = if root == nil: cast[SwitchIntegers](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  opcodes = newSeq[SwitchIntegers_Opcode]()
  block:
    var i: int
    while not io.eof:
      opcodes.add(SwitchIntegers_Opcode.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchIntegers], filename: string): SwitchIntegers =
  SwitchIntegers.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchIntegersObj) =
  close(x.io)

