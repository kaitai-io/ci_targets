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

### ExprIoEof_OneOrTwo ###
proc reflectEof*(this: ExprIoEof_OneOrTwo): bool
proc reflectEof(this: ExprIoEof_OneOrTwo): bool = 
  if isSome(this.reflectEofInst):
    return get(this.reflectEofInst)
  let reflectEofInst = stream.this.isEof
  this.reflectEofInst = some(reflectEofInst)
  return get(this.reflectEofInst)

proc read*(_: typedesc[ExprIoEof_OneOrTwo], io: KaitaiStream, root: ExprIoEof, parent: ExprIoEof): ExprIoEof_OneOrTwo =
  let this = new(ExprIoEof_OneOrTwo)
  let root = if root == nil: cast[ExprIoEof](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readU4le()
  this.one = one
  if not(stream.this.isEof):
    let two = this.io.readU4le()
    this.two = two
  result = this

proc fromFile*(_: typedesc[ExprIoEof_OneOrTwo], filename: string): ExprIoEof_OneOrTwo =
  ExprIoEof_OneOrTwo.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoEof_OneOrTwoObj) =
  close(x.io)

### ExprIoEof ###
proc read*(_: typedesc[ExprIoEof], io: KaitaiStream, root: ExprIoEof, parent: ref RootObj): ExprIoEof =
  let this = new(ExprIoEof)
  let root = if root == nil: cast[ExprIoEof](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let rawSubstream1 = this.io.readBytes(int(4))
  this.rawSubstream1 = rawSubstream1
  let rawSubstream1Io = newKaitaiStringStream(rawSubstream1)
  let substream1 = ExprIoEof_OneOrTwo.read(rawSubstream1Io, this.root, this)
  this.substream1 = substream1
  let rawSubstream2 = this.io.readBytes(int(8))
  this.rawSubstream2 = rawSubstream2
  let rawSubstream2Io = newKaitaiStringStream(rawSubstream2)
  let substream2 = ExprIoEof_OneOrTwo.read(rawSubstream2Io, this.root, this)
  this.substream2 = substream2
  result = this

proc fromFile*(_: typedesc[ExprIoEof], filename: string): ExprIoEof =
  ExprIoEof.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprIoEofObj) =
  close(x.io)

