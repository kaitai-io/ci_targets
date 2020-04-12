import kaitai_struct_nim_runtime
import options
import encodings

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  IfStruct* = ref object of KaitaiStruct
    op1*: IfStruct_Operation
    op2*: IfStruct_Operation
    op3*: IfStruct_Operation
    parent*: KaitaiStruct
  IfStruct_Operation* = ref object of KaitaiStruct
    opcode*: uint8
    argTuple*: IfStruct_ArgTuple
    argStr*: IfStruct_ArgStr
    parent*: IfStruct
  IfStruct_ArgTuple* = ref object of KaitaiStruct
    num1*: uint8
    num2*: uint8
    parent*: IfStruct_Operation
  IfStruct_ArgStr* = ref object of KaitaiStruct
    len*: uint8
    str*: string
    parent*: IfStruct_Operation

proc read*(_: typedesc[IfStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IfStruct
proc read*(_: typedesc[IfStruct_Operation], io: KaitaiStream, root: KaitaiStruct, parent: IfStruct): IfStruct_Operation
proc read*(_: typedesc[IfStruct_ArgTuple], io: KaitaiStream, root: KaitaiStruct, parent: IfStruct_Operation): IfStruct_ArgTuple
proc read*(_: typedesc[IfStruct_ArgStr], io: KaitaiStream, root: KaitaiStruct, parent: IfStruct_Operation): IfStruct_ArgStr


proc read*(_: typedesc[IfStruct], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IfStruct =
  template this: untyped = result
  this = new(IfStruct)
  let root = if root == nil: cast[IfStruct](this) else: cast[IfStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.op1 = IfStruct_Operation.read(this.io, this.root, this)
  this.op2 = IfStruct_Operation.read(this.io, this.root, this)
  this.op3 = IfStruct_Operation.read(this.io, this.root, this)

proc fromFile*(_: typedesc[IfStruct], filename: string): IfStruct =
  IfStruct.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IfStruct_Operation], io: KaitaiStream, root: KaitaiStruct, parent: IfStruct): IfStruct_Operation =
  template this: untyped = result
  this = new(IfStruct_Operation)
  let root = if root == nil: cast[IfStruct](this) else: cast[IfStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.opcode = this.io.readU1()
  if this.opcode == 84:
    this.argTuple = IfStruct_ArgTuple.read(this.io, this.root, this)
  if this.opcode == 83:
    this.argStr = IfStruct_ArgStr.read(this.io, this.root, this)

proc fromFile*(_: typedesc[IfStruct_Operation], filename: string): IfStruct_Operation =
  IfStruct_Operation.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IfStruct_ArgTuple], io: KaitaiStream, root: KaitaiStruct, parent: IfStruct_Operation): IfStruct_ArgTuple =
  template this: untyped = result
  this = new(IfStruct_ArgTuple)
  let root = if root == nil: cast[IfStruct](this) else: cast[IfStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.num1 = this.io.readU1()
  this.num2 = this.io.readU1()

proc fromFile*(_: typedesc[IfStruct_ArgTuple], filename: string): IfStruct_ArgTuple =
  IfStruct_ArgTuple.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IfStruct_ArgStr], io: KaitaiStream, root: KaitaiStruct, parent: IfStruct_Operation): IfStruct_ArgStr =
  template this: untyped = result
  this = new(IfStruct_ArgStr)
  let root = if root == nil: cast[IfStruct](this) else: cast[IfStruct](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.len = this.io.readU1()
  this.str = convert(this.io.readBytes(int(this.len)), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[IfStruct_ArgStr], filename: string): IfStruct_ArgStr =
  IfStruct_ArgStr.read(newKaitaiFileStream(filename), nil, nil)

