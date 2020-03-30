import kaitai_struct_nim_runtime
import options
import encodings

type
  SwitchCast_Opcode* = ref SwitchCast_OpcodeObj
  SwitchCast_OpcodeObj* = object
    code*: uint8
    body*: ref RootObj
    io*: KaitaiStream
    root*: SwitchCast
    parent*: SwitchCast
  SwitchCast_Intval* = ref SwitchCast_IntvalObj
  SwitchCast_IntvalObj* = object
    value*: uint8
    io*: KaitaiStream
    root*: SwitchCast
    parent*: SwitchCast_Opcode
  SwitchCast_Strval* = ref SwitchCast_StrvalObj
  SwitchCast_StrvalObj* = object
    value*: string
    io*: KaitaiStream
    root*: SwitchCast
    parent*: SwitchCast_Opcode
  SwitchCast* = ref SwitchCastObj
  SwitchCastObj* = object
    opcodes*: seq[SwitchCast_Opcode]
    io*: KaitaiStream
    root*: SwitchCast
    parent*: ref RootObj
    firstObjInst*: Option[SwitchCast_Strval]
    secondValInst*: Option[uint8]
    errCastInst*: Option[SwitchCast_Strval]

### SwitchCast_Opcode ###
proc read*(_: typedesc[SwitchCast_Opcode], io: KaitaiStream, root: SwitchCast, parent: SwitchCast): SwitchCast_Opcode =
  let this = new(SwitchCast_Opcode)
  let root = if root == nil: cast[SwitchCast](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let code = this.io.readU1()
  this.code = code
  let body = SwitchCast_Intval.read(this.io, this.root, this)
  this.body = body
  let body = SwitchCast_Strval.read(this.io, this.root, this)
  this.body = body
  result = this

proc fromFile*(_: typedesc[SwitchCast_Opcode], filename: string): SwitchCast_Opcode =
  SwitchCast_Opcode.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchCast_OpcodeObj) =
  close(x.io)

### SwitchCast_Intval ###
proc read*(_: typedesc[SwitchCast_Intval], io: KaitaiStream, root: SwitchCast, parent: SwitchCast_Opcode): SwitchCast_Intval =
  let this = new(SwitchCast_Intval)
  let root = if root == nil: cast[SwitchCast](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let value = this.io.readU1()
  this.value = value
  result = this

proc fromFile*(_: typedesc[SwitchCast_Intval], filename: string): SwitchCast_Intval =
  SwitchCast_Intval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchCast_IntvalObj) =
  close(x.io)

### SwitchCast_Strval ###
proc read*(_: typedesc[SwitchCast_Strval], io: KaitaiStream, root: SwitchCast, parent: SwitchCast_Opcode): SwitchCast_Strval =
  let this = new(SwitchCast_Strval)
  let root = if root == nil: cast[SwitchCast](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let value = convert(this.io.readBytesTerm(0, false, true, true), srcEncoding = "ASCII")
  this.value = value
  result = this

proc fromFile*(_: typedesc[SwitchCast_Strval], filename: string): SwitchCast_Strval =
  SwitchCast_Strval.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchCast_StrvalObj) =
  close(x.io)

### SwitchCast ###
proc firstObj*(this: SwitchCast): SwitchCast_Strval
proc secondVal*(this: SwitchCast): uint8
proc errCast*(this: SwitchCast): SwitchCast_Strval
proc firstObj(this: SwitchCast): SwitchCast_Strval = 
  if isSome(this.firstObjInst):
    return get(this.firstObjInst)
  let firstObjInst = this.opcodes[0].this.body
  this.firstObjInst = some(firstObjInst)
  return get(this.firstObjInst)

proc secondVal(this: SwitchCast): uint8 = 
  if isSome(this.secondValInst):
    return get(this.secondValInst)
  let secondValInst = this.opcodes[1].this.body.this.value
  this.secondValInst = some(secondValInst)
  return get(this.secondValInst)

proc errCast(this: SwitchCast): SwitchCast_Strval = 
  if isSome(this.errCastInst):
    return get(this.errCastInst)
  let errCastInst = this.opcodes[2].this.body
  this.errCastInst = some(errCastInst)
  return get(this.errCastInst)

proc read*(_: typedesc[SwitchCast], io: KaitaiStream, root: SwitchCast, parent: ref RootObj): SwitchCast =
  let this = new(SwitchCast)
  let root = if root == nil: cast[SwitchCast](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcodes = newSeq[SwitchCast_Opcode]()
  block:
    var i: int
    while not this.io.eof:
      this.opcodes.add(SwitchCast_Opcode.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[SwitchCast], filename: string): SwitchCast =
  SwitchCast.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SwitchCastObj) =
  close(x.io)

