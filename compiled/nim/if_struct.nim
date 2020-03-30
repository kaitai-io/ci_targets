import kaitai_struct_nim_runtime
import options
import encodings

type
  IfStruct_Operation* = ref IfStruct_OperationObj
  IfStruct_OperationObj* = object
    opcode*: uint8
    argTuple*: IfStruct_ArgTuple
    argStr*: IfStruct_ArgStr
    io*: KaitaiStream
    root*: IfStruct
    parent*: IfStruct
  IfStruct_ArgTuple* = ref IfStruct_ArgTupleObj
  IfStruct_ArgTupleObj* = object
    num1*: uint8
    num2*: uint8
    io*: KaitaiStream
    root*: IfStruct
    parent*: IfStruct_Operation
  IfStruct_ArgStr* = ref IfStruct_ArgStrObj
  IfStruct_ArgStrObj* = object
    len*: uint8
    str*: string
    io*: KaitaiStream
    root*: IfStruct
    parent*: IfStruct_Operation
  IfStruct* = ref IfStructObj
  IfStructObj* = object
    op1*: IfStruct_Operation
    op2*: IfStruct_Operation
    op3*: IfStruct_Operation
    io*: KaitaiStream
    root*: IfStruct
    parent*: ref RootObj

## IfStruct_Operation
proc read*(_: typedesc[IfStruct_Operation], io: KaitaiStream, root: IfStruct, parent: IfStruct): IfStruct_Operation =
  let this = new(IfStruct_Operation)
  let root = if root == nil: cast[IfStruct](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.opcode = this.io.readU1()
  if this.opcode == 84:
    this.argTuple = IfStruct_ArgTuple.read(this.io, this.root, this)
  if this.opcode == 83:
    this.argStr = IfStruct_ArgStr.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[IfStruct_Operation], filename: string): IfStruct_Operation =
  IfStruct_Operation.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IfStruct_OperationObj) =
  close(x.io)

## IfStruct_ArgTuple
proc read*(_: typedesc[IfStruct_ArgTuple], io: KaitaiStream, root: IfStruct, parent: IfStruct_Operation): IfStruct_ArgTuple =
  let this = new(IfStruct_ArgTuple)
  let root = if root == nil: cast[IfStruct](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.num1 = this.io.readU1()
  this.num2 = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[IfStruct_ArgTuple], filename: string): IfStruct_ArgTuple =
  IfStruct_ArgTuple.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IfStruct_ArgTupleObj) =
  close(x.io)

## IfStruct_ArgStr
proc read*(_: typedesc[IfStruct_ArgStr], io: KaitaiStream, root: IfStruct, parent: IfStruct_Operation): IfStruct_ArgStr =
  let this = new(IfStruct_ArgStr)
  let root = if root == nil: cast[IfStruct](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.len = this.io.readU1()
  this.str = convert(this.io.readBytes(int(this.len)), srcEncoding = "UTF-8")
  result = this

proc fromFile*(_: typedesc[IfStruct_ArgStr], filename: string): IfStruct_ArgStr =
  IfStruct_ArgStr.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IfStruct_ArgStrObj) =
  close(x.io)

## IfStruct
proc read*(_: typedesc[IfStruct], io: KaitaiStream, root: IfStruct, parent: ref RootObj): IfStruct =
  let this = new(IfStruct)
  let root = if root == nil: cast[IfStruct](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.op1 = IfStruct_Operation.read(this.io, this.root, this)
  this.op2 = IfStruct_Operation.read(this.io, this.root, this)
  this.op3 = IfStruct_Operation.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[IfStruct], filename: string): IfStruct =
  IfStruct.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IfStructObj) =
  close(x.io)

