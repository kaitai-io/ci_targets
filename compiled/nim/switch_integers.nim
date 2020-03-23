import kaitai_struct_nim_runtime

type
  SwitchIntegersopcode* = ref SwitchIntegersopcodeObj
  SwitchIntegersopcodeObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchIntegers
    parent*: ref RootObj
  SwitchIntegers* = ref SwitchIntegersObj
  SwitchIntegersObj* = object
    opcodes*: seq[Opcode]
    io*: KaitaiStream
    root*: SwitchIntegers
    parent*: ref RootObj

### SwitchIntegersopcode ###
proc read*(_: typedesc[SwitchIntegersopcode], io: KaitaiStream, root: SwitchIntegers, parent: SwitchIntegers): SwitchIntegersopcode =
  result = new(SwitchIntegersopcode)
  let root = if root == nil: cast[SwitchIntegers](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.code = result.io.readU1()
  result.body = uint64(result.io.readU1())
  result.body = uint64(result.io.readU2le())
  result.body = uint64(result.io.readU4le())
  result.body = result.io.readU8le()

proc fromFile*(_: typedesc[SwitchIntegersopcode], filename: string): SwitchIntegersopcode =
  SwitchIntegersopcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchIntegersopcodeObj) =
  close(x.io)

### SwitchIntegers ###
proc read*(_: typedesc[SwitchIntegers], io: KaitaiStream, root: SwitchIntegers, parent: ref RootObj): SwitchIntegers =
  result = new(SwitchIntegers)
  let root = if root == nil: cast[SwitchIntegers](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.opcodes = newSeq[Opcode]()
  block:
    var i: int
    while not result.io.eof:
      result.opcodes.add(Opcode.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[SwitchIntegers], filename: string): SwitchIntegers =
  SwitchIntegers.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchIntegersObj) =
  close(x.io)

