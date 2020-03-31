import kaitai_struct_nim_runtime
import options
import encodings

type
  SwitchCast* = ref object of KaitaiStruct
    opcodes*: seq[SwitchCast_Opcode]
    parent*: KaitaiStruct
    firstObjInst*: Option[SwitchCast_Strval]
    secondValInst*: Option[uint8]
    errCastInst*: Option[SwitchCast_Strval]
  SwitchCast_Opcode* = ref object of KaitaiStruct
    code*: uint8
    body*: KaitaiStruct
    parent*: SwitchCast
  SwitchCast_Intval* = ref object of KaitaiStruct
    value*: uint8
    parent*: SwitchCast_Opcode
  SwitchCast_Strval* = ref object of KaitaiStruct
    value*: string
    parent*: SwitchCast_Opcode

proc read*(_: typedesc[SwitchCast_Opcode], io: KaitaiStream, root: KaitaiStruct, parent: SwitchCast): SwitchCast_Opcode =
  template this: untyped = result
  this = new(SwitchCast_Opcode)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.code = this.io.readU1()

  ##[
  ]##
  case this.code
  of 73:
    this.body = SwitchCast_Intval.read(this.io, this.root, this)
  of 83:
    this.body = SwitchCast_Strval.read(this.io, this.root, this)

proc fromFile*(_: typedesc[SwitchCast_Opcode], filename: string): SwitchCast_Opcode =
  SwitchCast_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchCast_Intval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchCast_Opcode): SwitchCast_Intval =
  template this: untyped = result
  this = new(SwitchCast_Intval)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.value = this.io.readU1()

proc fromFile*(_: typedesc[SwitchCast_Intval], filename: string): SwitchCast_Intval =
  SwitchCast_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[SwitchCast_Strval], io: KaitaiStream, root: KaitaiStruct, parent: SwitchCast_Opcode): SwitchCast_Strval =
  template this: untyped = result
  this = new(SwitchCast_Strval)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.value = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[SwitchCast_Strval], filename: string): SwitchCast_Strval =
  SwitchCast_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc firstObj*(this: SwitchCast): SwitchCast_Strval
proc secondVal*(this: SwitchCast): uint8
proc errCast*(this: SwitchCast): SwitchCast_Strval
proc read*(_: typedesc[SwitchCast], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): SwitchCast =
  template this: untyped = result
  this = new(SwitchCast)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.opcodes = newSeq[SwitchCast_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(SwitchCast_Opcode.read(this.io, this.root, this))
      inc i

proc firstObj(this: SwitchCast): SwitchCast_Strval = 
  if isSome(this.firstObjInst):
    return get(this.firstObjInst)
  this.firstObjInst = some((SwitchCast_Strval(this.opcodes[0].body)))
  return get(this.firstObjInst)

proc secondVal(this: SwitchCast): uint8 = 
  if isSome(this.secondValInst):
    return get(this.secondValInst)
  this.secondValInst = some((SwitchCast_Intval(this.opcodes[1].body)).value)
  return get(this.secondValInst)

proc errCast(this: SwitchCast): SwitchCast_Strval = 
  if isSome(this.errCastInst):
    return get(this.errCastInst)
  this.errCastInst = some((SwitchCast_Strval(this.opcodes[2].body)))
  return get(this.errCastInst)

proc fromFile*(_: typedesc[SwitchCast], filename: string): SwitchCast =
  SwitchCast.read(newKaitaiFileStream(filename), nil, nil)

