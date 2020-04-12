import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ExprIoEof* = ref object of KaitaiStruct
    substream1*: ExprIoEof_OneOrTwo
    substream2*: ExprIoEof_OneOrTwo
    parent*: KaitaiStruct
    rawSubstream1*: string
    rawSubstream2*: string
  ExprIoEof_OneOrTwo* = ref object of KaitaiStruct
    one*: uint32
    two*: uint32
    parent*: ExprIoEof
    reflectEofInst*: Option[bool]

proc read*(_: typedesc[ExprIoEof], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoEof
proc read*(_: typedesc[ExprIoEof_OneOrTwo], io: KaitaiStream, root: KaitaiStruct, parent: ExprIoEof): ExprIoEof_OneOrTwo

proc reflectEof*(this: ExprIoEof_OneOrTwo): bool

proc read*(_: typedesc[ExprIoEof], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ExprIoEof =
  template this: untyped = result
  this = new(ExprIoEof)
  let root = if root == nil: cast[ExprIoEof](this) else: cast[ExprIoEof](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.rawSubstream1 = this.io.readBytes(int(4))
  let rawSubstream1Io = newKaitaiStringStream(this.rawSubstream1)
  this.substream1 = ExprIoEof_OneOrTwo.read(rawSubstream1Io, this.root, this)
  this.rawSubstream2 = this.io.readBytes(int(8))
  let rawSubstream2Io = newKaitaiStringStream(this.rawSubstream2)
  this.substream2 = ExprIoEof_OneOrTwo.read(rawSubstream2Io, this.root, this)

proc fromFile*(_: typedesc[ExprIoEof], filename: string): ExprIoEof =
  ExprIoEof.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ExprIoEof_OneOrTwo], io: KaitaiStream, root: KaitaiStruct, parent: ExprIoEof): ExprIoEof_OneOrTwo =
  template this: untyped = result
  this = new(ExprIoEof_OneOrTwo)
  let root = if root == nil: cast[ExprIoEof](this) else: cast[ExprIoEof](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU4le()
  if not(this.io.isEof):
    this.two = this.io.readU4le()

proc reflectEof(this: ExprIoEof_OneOrTwo): bool = 
  if isSome(this.reflectEofInst):
    return get(this.reflectEofInst)
  this.reflectEofInst = bool(this.io.isEof)
  if isSome(this.reflectEofInst):
    return get(this.reflectEofInst)

proc fromFile*(_: typedesc[ExprIoEof_OneOrTwo], filename: string): ExprIoEof_OneOrTwo =
  ExprIoEof_OneOrTwo.read(newKaitaiFileStream(filename), nil, nil)

