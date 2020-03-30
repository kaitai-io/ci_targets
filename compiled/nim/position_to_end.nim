import kaitai_struct_nim_runtime
import options

type
  PositionToEnd_IndexObj* = ref PositionToEnd_IndexObjObj
  PositionToEnd_IndexObjObj* = object
    foo*: uint32
    bar*: uint32
    io*: KaitaiStream
    root*: PositionToEnd
    parent*: PositionToEnd
  PositionToEnd* = ref PositionToEndObj
  PositionToEndObj* = object
    io*: KaitaiStream
    root*: PositionToEnd
    parent*: ref RootObj
    indexInst*: Option[PositionToEnd_IndexObj]

## PositionToEnd_IndexObj
proc read*(_: typedesc[PositionToEnd_IndexObj], io: KaitaiStream, root: PositionToEnd, parent: PositionToEnd): PositionToEnd_IndexObj =
  let this = new(PositionToEnd_IndexObj)
  let root = if root == nil: cast[PositionToEnd](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readU4le()
  this.bar = this.io.readU4le()
  result = this

proc fromFile*(_: typedesc[PositionToEnd_IndexObj], filename: string): PositionToEnd_IndexObj =
  PositionToEnd_IndexObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionToEnd_IndexObjObj) =
  close(x.io)

## PositionToEnd
proc index*(this: PositionToEnd): PositionToEnd_IndexObj
proc index(this: PositionToEnd): PositionToEnd_IndexObj = 
  if isSome(this.indexInst):
    return get(this.indexInst)
  let pos = this.io.pos()
  this.io.seek((this.stream.size - 8))
  this.indexInst = some(PositionToEnd_IndexObj.read(this.io, this.root, this))
  this.io.seek(pos)
  return get(this.indexInst)

proc read*(_: typedesc[PositionToEnd], io: KaitaiStream, root: PositionToEnd, parent: ref RootObj): PositionToEnd =
  let this = new(PositionToEnd)
  let root = if root == nil: cast[PositionToEnd](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[PositionToEnd], filename: string): PositionToEnd =
  PositionToEnd.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var PositionToEndObj) =
  close(x.io)

