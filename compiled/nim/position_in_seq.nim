import kaitai_struct_nim_runtime
import options

type
  PositionInSeq_HeaderObj* = ref PositionInSeq_HeaderObjObj
  PositionInSeq_HeaderObjObj* = object
    qtyNumbers*: uint32
    io*: KaitaiStream
    root*: PositionInSeq
    parent*: PositionInSeq
  PositionInSeq* = ref PositionInSeqObj
  PositionInSeqObj* = object
    numbers*: seq[uint8]
    io*: KaitaiStream
    root*: PositionInSeq
    parent*: ref RootObj
    headerInst*: Option[PositionInSeq_HeaderObj]

## PositionInSeq_HeaderObj
proc read*(_: typedesc[PositionInSeq_HeaderObj], io: KaitaiStream, root: PositionInSeq, parent: PositionInSeq): PositionInSeq_HeaderObj =
  let this = new(PositionInSeq_HeaderObj)
  let root = if root == nil: cast[PositionInSeq](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.qtyNumbers = this.io.readU4le()
  result = this

proc fromFile*(_: typedesc[PositionInSeq_HeaderObj], filename: string): PositionInSeq_HeaderObj =
  PositionInSeq_HeaderObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionInSeq_HeaderObjObj) =
  close(x.io)

## PositionInSeq
proc header*(this: PositionInSeq): PositionInSeq_HeaderObj
proc header(this: PositionInSeq): PositionInSeq_HeaderObj = 
  if isSome(this.headerInst):
    return get(this.headerInst)
  let pos = this.io.pos()
  this.io.seek(16)
  this.headerInst = some(PositionInSeq_HeaderObj.read(this.io, this.root, this))
  this.io.seek(pos)
  return get(this.headerInst)

proc read*(_: typedesc[PositionInSeq], io: KaitaiStream, root: PositionInSeq, parent: ref RootObj): PositionInSeq =
  let this = new(PositionInSeq)
  let root = if root == nil: cast[PositionInSeq](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  numbers = newSeq[uint8](this.header.qtyNumbers)
  for i in 0 ..< this.header.qtyNumbers:
    this.numbers.add(this.io.readU1())
  result = this

proc fromFile*(_: typedesc[PositionInSeq], filename: string): PositionInSeq =
  PositionInSeq.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionInSeqObj) =
  close(x.io)

