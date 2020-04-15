import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  PositionInSeq* = ref object of KaitaiStruct
    numbers*: seq[uint8]
    parent*: KaitaiStruct
    headerInst*: Option[PositionInSeq_HeaderObj]
  PositionInSeq_HeaderObj* = ref object of KaitaiStruct
    qtyNumbers*: uint32
    parent*: PositionInSeq

proc read*(_: typedesc[PositionInSeq], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): PositionInSeq
proc read*(_: typedesc[PositionInSeq_HeaderObj], io: KaitaiStream, root: KaitaiStruct, parent: PositionInSeq): PositionInSeq_HeaderObj

proc header*(this: PositionInSeq): PositionInSeq_HeaderObj

proc read*(_: typedesc[PositionInSeq], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): PositionInSeq =
  template this: untyped = result
  this = new(PositionInSeq)
  let root = if root == nil: cast[PositionInSeq](this) else: cast[PositionInSeq](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< this.header.qtyNumbers:
    let numbersExpr = this.io.readU1()
    this.numbers.add(numbersExpr)

proc header(this: PositionInSeq): PositionInSeq_HeaderObj = 
  if isSome(this.headerInst):
    return get(this.headerInst)
  let pos = this.io.pos()
  this.io.seek(int(16))
  let headerInstExpr = PositionInSeq_HeaderObj.read(this.io, this.root, this)
  this.headerInst = headerInstExpr
  this.io.seek(pos)
  if isSome(this.headerInst):
    return get(this.headerInst)

proc fromFile*(_: typedesc[PositionInSeq], filename: string): PositionInSeq =
  PositionInSeq.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[PositionInSeq_HeaderObj], io: KaitaiStream, root: KaitaiStruct, parent: PositionInSeq): PositionInSeq_HeaderObj =
  template this: untyped = result
  this = new(PositionInSeq_HeaderObj)
  let root = if root == nil: cast[PositionInSeq](this) else: cast[PositionInSeq](root)
  this.io = io
  this.root = root
  this.parent = parent

  let qtyNumbersExpr = this.io.readU4le()
  this.qtyNumbers = qtyNumbersExpr

proc fromFile*(_: typedesc[PositionInSeq_HeaderObj], filename: string): PositionInSeq_HeaderObj =
  PositionInSeq_HeaderObj.read(newKaitaiFileStream(filename), nil, nil)

