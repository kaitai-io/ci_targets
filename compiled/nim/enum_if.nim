import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

defineEnum(EnumIf_opcodes)
const
  a_string* = EnumIf_opcodes(83)
  a_tuple* = EnumIf_opcodes(84)

type
  EnumIf* = ref object of KaitaiStruct
    op1*: EnumIf_Operation
    op2*: EnumIf_Operation
    op3*: EnumIf_Operation
    parent*: KaitaiStruct
  EnumIf_Operation* = ref object of KaitaiStruct
    opcode*: EnumIf_Opcodes
    argTuple*: EnumIf_ArgTuple
    argStr*: EnumIf_ArgStr
    parent*: EnumIf
  EnumIf_ArgTuple* = ref object of KaitaiStruct
    num1*: uint8
    num2*: uint8
    parent*: EnumIf_Operation
  EnumIf_ArgStr* = ref object of KaitaiStruct
    len*: uint8
    str*: string
    parent*: EnumIf_Operation

proc read*(_: typedesc[EnumIf], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumIf
proc read*(_: typedesc[EnumIf_Operation], io: KaitaiStream, root: KaitaiStruct, parent: EnumIf): EnumIf_Operation
proc read*(_: typedesc[EnumIf_ArgTuple], io: KaitaiStream, root: KaitaiStruct, parent: EnumIf_Operation): EnumIf_ArgTuple
proc read*(_: typedesc[EnumIf_ArgStr], io: KaitaiStream, root: KaitaiStruct, parent: EnumIf_Operation): EnumIf_ArgStr


proc read*(_: typedesc[EnumIf], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EnumIf =
  template this: untyped = result
  this = new(EnumIf)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.op1 = EnumIf_Operation.read(this.io, this.root, this)
  this.op2 = EnumIf_Operation.read(this.io, this.root, this)
  this.op3 = EnumIf_Operation.read(this.io, this.root, this)

proc fromFile*(_: typedesc[EnumIf], filename: string): EnumIf =
  EnumIf.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EnumIf_Operation], io: KaitaiStream, root: KaitaiStruct, parent: EnumIf): EnumIf_Operation =
  template this: untyped = result
  this = new(EnumIf_Operation)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcode = EnumIf_Opcodes(this.io.readU1())
  if this.opcode == EnumIf_Opcodes(a_tuple):
    this.argTuple = EnumIf_ArgTuple.read(this.io, this.root, this)
  if this.opcode == EnumIf_Opcodes(a_string):
    this.argStr = EnumIf_ArgStr.read(this.io, this.root, this)

proc fromFile*(_: typedesc[EnumIf_Operation], filename: string): EnumIf_Operation =
  EnumIf_Operation.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EnumIf_ArgTuple], io: KaitaiStream, root: KaitaiStruct, parent: EnumIf_Operation): EnumIf_ArgTuple =
  template this: untyped = result
  this = new(EnumIf_ArgTuple)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.num1 = this.io.readU1()
  this.num2 = this.io.readU1()

proc fromFile*(_: typedesc[EnumIf_ArgTuple], filename: string): EnumIf_ArgTuple =
  EnumIf_ArgTuple.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[EnumIf_ArgStr], io: KaitaiStream, root: KaitaiStruct, parent: EnumIf_Operation): EnumIf_ArgStr =
  template this: untyped = result
  this = new(EnumIf_ArgStr)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.len = this.io.readU1()
  this.str = convert(this.io.readBytes(int(this.len)), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[EnumIf_ArgStr], filename: string): EnumIf_ArgStr =
  EnumIf_ArgStr.read(newKaitaiFileStream(filename), nil, nil)

