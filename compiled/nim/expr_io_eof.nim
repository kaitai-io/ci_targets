import kaitai_struct_nim_runtime
import options

type
  ExprIoEof_OneOrTwo* = ref ExprIoEof_OneOrTwoObj
  ExprIoEof_OneOrTwoObj* = object
    one*: uint32
    two*: uint32
    io*: KaitaiStream
    root*: ExprIoEof
    parent*: ExprIoEof
    reflectEofInst*: Option[bool]
  ExprIoEof* = ref ExprIoEofObj
  ExprIoEofObj* = object
    substream1*: ExprIoEof_OneOrTwo
    substream2*: ExprIoEof_OneOrTwo
    io*: KaitaiStream
    root*: ExprIoEof
    parent*: ref RootObj
    rawSubstream1*: string
    rawSubstream2*: string

## ExprIoEof_OneOrTwo
proc reflectEof*(this: ExprIoEof_OneOrTwo): bool
proc reflectEof(this: ExprIoEof_OneOrTwo): bool = 
  if isSome(this.reflectEofInst):
    return get(this.reflectEofInst)
  this.reflectEofInst = some(this.stream.isEof)
  return get(this.reflectEofInst)

proc read*(_: typedesc[ExprIoEof_OneOrTwo], io: KaitaiStream, root: ExprIoEof, parent: ExprIoEof): ExprIoEof_OneOrTwo =
  let this = new(ExprIoEof_OneOrTwo)
  let root = if root == nil: cast[ExprIoEof](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU4le()
  if not(this.stream.isEof):
    this.two = this.io.readU4le()
  result = this

proc fromFile*(_: typedesc[ExprIoEof_OneOrTwo], filename: string): ExprIoEof_OneOrTwo =
  ExprIoEof_OneOrTwo.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoEof_OneOrTwoObj) =
  close(x.io)

## ExprIoEof
proc read*(_: typedesc[ExprIoEof], io: KaitaiStream, root: ExprIoEof, parent: ref RootObj): ExprIoEof =
  let this = new(ExprIoEof)
  let root = if root == nil: cast[ExprIoEof](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.rawSubstream1 = this.io.readBytes(int(4))
  let rawSubstream1Io = newKaitaiStringStream(this.rawSubstream1)
  this.substream1 = ExprIoEof_OneOrTwo.read(rawSubstream1Io, this.root, this)
  this.rawSubstream2 = this.io.readBytes(int(8))
  let rawSubstream2Io = newKaitaiStringStream(this.rawSubstream2)
  this.substream2 = ExprIoEof_OneOrTwo.read(rawSubstream2Io, this.root, this)
  result = this

proc fromFile*(_: typedesc[ExprIoEof], filename: string): ExprIoEof =
  ExprIoEof.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoEofObj) =
  close(x.io)

