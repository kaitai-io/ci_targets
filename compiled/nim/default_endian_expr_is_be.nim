import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  DefaultEndianExprIsBe* = ref object of KaitaiStruct
    docs*: seq[DefaultEndianExprIsBe_Doc]
    parent*: KaitaiStruct
  DefaultEndianExprIsBe_Doc* = ref object of KaitaiStruct
    indicator*: string
    main*: DefaultEndianExprIsBe_Doc_MainObj
    parent*: DefaultEndianExprIsBe
  DefaultEndianExprIsBe_Doc_MainObj* = ref object of KaitaiStruct
    someInt*: uint32
    someIntBe*: uint16
    someIntLe*: uint16
    parent*: DefaultEndianExprIsBe_Doc
    instIntInst*: Option[uint32]
    instSubInst*: Option[DefaultEndianExprIsBe_Doc_MainObj_SubMainObj]
    isLe: bool
  DefaultEndianExprIsBe_Doc_MainObj_SubMainObj* = ref object of KaitaiStruct
    foo*: uint32
    parent*: DefaultEndianExprIsBe_Doc_MainObj
    isLe: bool

proc read*(_: typedesc[DefaultEndianExprIsBe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultEndianExprIsBe
proc read*(_: typedesc[DefaultEndianExprIsBe_Doc], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsBe): DefaultEndianExprIsBe_Doc
proc read*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsBe_Doc): DefaultEndianExprIsBe_Doc_MainObj
proc read*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj_SubMainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsBe_Doc_MainObj): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj

proc read*(_: typedesc[DefaultEndianExprIsBe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultEndianExprIsBe =
  template this: untyped = result
  this = new(DefaultEndianExprIsBe)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.docs = newSeq[DefaultEndianExprIsBe_Doc]()
  block:
    var i: int
    while not this.io.eof:
      this.docs.add(DefaultEndianExprIsBe_Doc.read(this.io, this.root, this))
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprIsBe], filename: string): DefaultEndianExprIsBe =
  DefaultEndianExprIsBe.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DefaultEndianExprIsBe_Doc], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsBe): DefaultEndianExprIsBe_Doc =
  template this: untyped = result
  this = new(DefaultEndianExprIsBe_Doc)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.indicator = this.io.readBytes(int(2))
  this.main = DefaultEndianExprIsBe_Doc_MainObj.read(this.io, this.root, this)

proc fromFile*(_: typedesc[DefaultEndianExprIsBe_Doc], filename: string): DefaultEndianExprIsBe_Doc =
  DefaultEndianExprIsBe_Doc.read(newKaitaiFileStream(filename), nil, nil)

proc instInt*(this: DefaultEndianExprIsBe_Doc_MainObj): uint32
proc instSub*(this: DefaultEndianExprIsBe_Doc_MainObj): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj

proc readLe(this: DefaultEndianExprIsBe_Doc_MainObj) =
  this.someInt = this.io.readU4le()
  this.someIntBe = this.io.readU2be()
  this.someIntLe = this.io.readU2le()


proc readBe(this: DefaultEndianExprIsBe_Doc_MainObj) =
  this.someInt = this.io.readU4be()
  this.someIntBe = this.io.readU2be()
  this.someIntLe = this.io.readU2le()

proc read*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsBe_Doc): DefaultEndianExprIsBe_Doc_MainObj =
  template this: untyped = result
  this = new(DefaultEndianExprIsBe_Doc_MainObj)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent
  this.isLe = false

  case this.parent.indicator
  of @[77'i8, 77].toString:
    this.isLe = false
  else:
    this.isLe = true

  if this.isLe:
    readLe(this)
  else:
    readBe(this)

proc instInt(this: DefaultEndianExprIsBe_Doc_MainObj): uint32 = 
  if isSome(this.instIntInst):
    return get(this.instIntInst)
  let pos = this.io.pos()
  this.io.seek(2)
  if this.isLe:
    this.instIntInst = some(this.io.readU4le())
  else:
    this.instIntInst = some(this.io.readU4be())
  this.io.seek(pos)
  return get(this.instIntInst)

proc instSub(this: DefaultEndianExprIsBe_Doc_MainObj): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj = 
  if isSome(this.instSubInst):
    return get(this.instSubInst)
  let pos = this.io.pos()
  this.io.seek(2)
  if this.isLe:
    this.instSubInst = some(DefaultEndianExprIsBe_Doc_MainObj_SubMainObj.read(this.io, this.root, this))
  else:
    this.instSubInst = some(DefaultEndianExprIsBe_Doc_MainObj_SubMainObj.read(this.io, this.root, this))
  this.io.seek(pos)
  return get(this.instSubInst)

proc fromFile*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj], filename: string): DefaultEndianExprIsBe_Doc_MainObj =
  DefaultEndianExprIsBe_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)


proc readLe(this: DefaultEndianExprIsBe_Doc_MainObj_SubMainObj) =
  this.foo = this.io.readU4le()


proc readBe(this: DefaultEndianExprIsBe_Doc_MainObj_SubMainObj) =
  this.foo = this.io.readU4be()

proc read*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj_SubMainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsBe_Doc_MainObj): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj =
  template this: untyped = result
  this = new(DefaultEndianExprIsBe_Doc_MainObj_SubMainObj)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent
  this.isLe = this.parent.isLe


  if this.isLe:
    readLe(this)
  else:
    readBe(this)

proc fromFile*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj_SubMainObj], filename: string): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj =
  DefaultEndianExprIsBe_Doc_MainObj_SubMainObj.read(newKaitaiFileStream(filename), nil, nil)

