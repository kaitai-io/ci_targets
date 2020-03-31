import kaitai_struct_nim_runtime
import options

type
  MultipleUse* = ref object of KaitaiStruct
    t1*: MultipleUse_Type1
    t2*: MultipleUse_Type2
    parent*: KaitaiStruct
  MultipleUse_Multi* = ref object of KaitaiStruct
    value*: int32
    parent*: KaitaiStruct
  MultipleUse_Type1* = ref object of KaitaiStruct
    firstUse*: MultipleUse_Multi
    parent*: MultipleUse
  MultipleUse_Type2* = ref object of KaitaiStruct
    parent*: MultipleUse
    secondUseInst*: Option[MultipleUse_Multi]

proc read*(_: typedesc[MultipleUse_Multi], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): MultipleUse_Multi =
  template this: untyped = result
  this = new(MultipleUse_Multi)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.value = this.io.readS4le()

proc fromFile*(_: typedesc[MultipleUse_Multi], filename: string): MultipleUse_Multi =
  MultipleUse_Multi.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[MultipleUse_Type1], io: KaitaiStream, root: KaitaiStruct, parent: MultipleUse): MultipleUse_Type1 =
  template this: untyped = result
  this = new(MultipleUse_Type1)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.firstUse = MultipleUse_Multi.read(this.io, this.root, this)

proc fromFile*(_: typedesc[MultipleUse_Type1], filename: string): MultipleUse_Type1 =
  MultipleUse_Type1.read(newKaitaiFileStream(filename), nil, nil)

proc secondUse*(this: MultipleUse_Type2): MultipleUse_Multi
proc read*(_: typedesc[MultipleUse_Type2], io: KaitaiStream, root: KaitaiStruct, parent: MultipleUse): MultipleUse_Type2 =
  template this: untyped = result
  this = new(MultipleUse_Type2)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


proc secondUse(this: MultipleUse_Type2): MultipleUse_Multi = 
  if isSome(this.secondUseInst):
    return get(this.secondUseInst)
  let pos = this.io.pos()
  this.io.seek(0)
  this.secondUseInst = some(MultipleUse_Multi.read(this.io, this.root, this))
  this.io.seek(pos)
  return get(this.secondUseInst)

proc fromFile*(_: typedesc[MultipleUse_Type2], filename: string): MultipleUse_Type2 =
  MultipleUse_Type2.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[MultipleUse], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): MultipleUse =
  template this: untyped = result
  this = new(MultipleUse)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.t1 = MultipleUse_Type1.read(this.io, this.root, this)

  ##[
  ]##
  this.t2 = MultipleUse_Type2.read(this.io, this.root, this)

proc fromFile*(_: typedesc[MultipleUse], filename: string): MultipleUse =
  MultipleUse.read(newKaitaiFileStream(filename), nil, nil)

