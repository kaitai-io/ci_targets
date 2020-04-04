import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  PositionToEnd* = ref object of KaitaiStruct
    parent*: KaitaiStruct
    indexInst*: Option[PositionToEnd_IndexObj]
  PositionToEnd_IndexObj* = ref object of KaitaiStruct
    foo*: uint32
    bar*: uint32
    parent*: PositionToEnd

proc read*(_: typedesc[PositionToEnd], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): PositionToEnd
proc read*(_: typedesc[PositionToEnd_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: PositionToEnd): PositionToEnd_IndexObj

proc index*(this: PositionToEnd): PositionToEnd_IndexObj

proc read*(_: typedesc[PositionToEnd], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): PositionToEnd =
  template this: untyped = result
  this = new(PositionToEnd)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc index(this: PositionToEnd): PositionToEnd_IndexObj = 
  if isSome(this.indexInst):
    return get(this.indexInst)
  let pos = this.io.pos()
  this.io.seek(int((this.io.size - 8)))
  this.indexInst = some(PositionToEnd_IndexObj.read(this.io, this.root, this))
  this.io.seek(pos)
  if isSome(this.indexInst):
    return get(this.indexInst)

proc fromFile*(_: typedesc[PositionToEnd], filename: string): PositionToEnd =
  PositionToEnd.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[PositionToEnd_IndexObj], io: KaitaiStream, root: KaitaiStruct, parent: PositionToEnd): PositionToEnd_IndexObj =
  template this: untyped = result
  this = new(PositionToEnd_IndexObj)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readU4le()
  this.bar = this.io.readU4le()

proc fromFile*(_: typedesc[PositionToEnd_IndexObj], filename: string): PositionToEnd_IndexObj =
  PositionToEnd_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

