import kaitai_struct_nim_runtime
import options

type
  MultipleUse_Multi* = ref MultipleUse_MultiObj
  MultipleUse_MultiObj* = object
    value*: int32
    io*: KaitaiStream
    root*: MultipleUse
    parent*: ref RootObj
  MultipleUse_Type1* = ref MultipleUse_Type1Obj
  MultipleUse_Type1Obj* = object
    firstUse*: MultipleUse_Multi
    io*: KaitaiStream
    root*: MultipleUse
    parent*: MultipleUse
  MultipleUse_Type2* = ref MultipleUse_Type2Obj
  MultipleUse_Type2Obj* = object
    io*: KaitaiStream
    root*: MultipleUse
    parent*: MultipleUse
    secondUseInst*: Option[MultipleUse_Multi]
  MultipleUse* = ref MultipleUseObj
  MultipleUseObj* = object
    t1*: MultipleUse_Type1
    t2*: MultipleUse_Type2
    io*: KaitaiStream
    root*: MultipleUse
    parent*: ref RootObj

## MultipleUse_Multi
proc read*(_: typedesc[MultipleUse_Multi], io: KaitaiStream, root: MultipleUse, parent: ref RootObj): MultipleUse_Multi =
  let this = new(MultipleUse_Multi)
  let root = if root == nil: cast[MultipleUse](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = this.io.readS4le()
  result = this

proc fromFile*(_: typedesc[MultipleUse_Multi], filename: string): MultipleUse_Multi =
  MultipleUse_Multi.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUse_MultiObj) =
  close(x.io)

## MultipleUse_Type1
proc read*(_: typedesc[MultipleUse_Type1], io: KaitaiStream, root: MultipleUse, parent: MultipleUse): MultipleUse_Type1 =
  let this = new(MultipleUse_Type1)
  let root = if root == nil: cast[MultipleUse](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.firstUse = MultipleUse_Multi.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[MultipleUse_Type1], filename: string): MultipleUse_Type1 =
  MultipleUse_Type1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUse_Type1Obj) =
  close(x.io)

## MultipleUse_Type2
proc secondUse*(this: MultipleUse_Type2): MultipleUse_Multi
proc secondUse(this: MultipleUse_Type2): MultipleUse_Multi = 
  if isSome(this.secondUseInst):
    return get(this.secondUseInst)
  let pos = this.io.pos()
  this.io.seek(0)
  this.secondUseInst = some(MultipleUse_Multi.read(this.io, this.root, this))
  this.io.seek(pos)
  return get(this.secondUseInst)

proc read*(_: typedesc[MultipleUse_Type2], io: KaitaiStream, root: MultipleUse, parent: MultipleUse): MultipleUse_Type2 =
  let this = new(MultipleUse_Type2)
  let root = if root == nil: cast[MultipleUse](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  result = this

proc fromFile*(_: typedesc[MultipleUse_Type2], filename: string): MultipleUse_Type2 =
  MultipleUse_Type2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUse_Type2Obj) =
  close(x.io)

## MultipleUse
proc read*(_: typedesc[MultipleUse], io: KaitaiStream, root: MultipleUse, parent: ref RootObj): MultipleUse =
  let this = new(MultipleUse)
  let root = if root == nil: cast[MultipleUse](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.t1 = MultipleUse_Type1.read(this.io, this.root, this)
  this.t2 = MultipleUse_Type2.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[MultipleUse], filename: string): MultipleUse =
  MultipleUse.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var MultipleUseObj) =
  close(x.io)

