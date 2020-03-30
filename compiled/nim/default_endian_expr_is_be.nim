import kaitai_struct_nim_runtime
import options

type
  DefaultEndianExprIsBe_Doc_MainObj_SubMainObj* = ref DefaultEndianExprIsBe_Doc_MainObj_SubMainObjObj
  DefaultEndianExprIsBe_Doc_MainObj_SubMainObjObj* = object
    foo*: uint32
    io*: KaitaiStream
    root*: DefaultEndianExprIsBe
    parent*: DefaultEndianExprIsBe_Doc_MainObj
    isLe: bool
  DefaultEndianExprIsBe_Doc_MainObj* = ref DefaultEndianExprIsBe_Doc_MainObjObj
  DefaultEndianExprIsBe_Doc_MainObjObj* = object
    someInt*: uint32
    someIntBe*: uint16
    someIntLe*: uint16
    io*: KaitaiStream
    root*: DefaultEndianExprIsBe
    parent*: DefaultEndianExprIsBe_Doc
    instIntInst*: Option[uint32]
    instSubInst*: Option[DefaultEndianExprIsBe_Doc_MainObj_SubMainObj]
    isLe: bool
  DefaultEndianExprIsBe_Doc* = ref DefaultEndianExprIsBe_DocObj
  DefaultEndianExprIsBe_DocObj* = object
    indicator*: string
    main*: DefaultEndianExprIsBe_Doc_MainObj
    io*: KaitaiStream
    root*: DefaultEndianExprIsBe
    parent*: DefaultEndianExprIsBe
  DefaultEndianExprIsBe* = ref DefaultEndianExprIsBeObj
  DefaultEndianExprIsBeObj* = object
    docs*: seq[DefaultEndianExprIsBe_Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprIsBe
    parent*: ref RootObj

## DefaultEndianExprIsBe_Doc_MainObj_SubMainObj

proc readLe(subject: DefaultEndianExprIsBe_Doc_MainObj_SubMainObj) =
  this.foo = this.io.readU4le()
  result = this


proc readBe(subject: DefaultEndianExprIsBe_Doc_MainObj_SubMainObj) =
  this.foo = this.io.readU4be()
  result = this

proc read*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj_SubMainObj], io: KaitaiStream, root: DefaultEndianExprIsBe, parent: DefaultEndianExprIsBe_Doc_MainObj): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj =
  let this = new(DefaultEndianExprIsBe_Doc_MainObj_SubMainObj)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  this.io = io
  this.root = root
  this.parent = parent
  result.isLe = result.parent.isLe


  if result.isLe:
    readLe(result)
  else:
    readBe(result)
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj_SubMainObj], filename: string): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj =
  DefaultEndianExprIsBe_Doc_MainObj_SubMainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsBe_Doc_MainObj_SubMainObjObj) =
  close(x.io)

## DefaultEndianExprIsBe_Doc_MainObj
proc instInt*(this: DefaultEndianExprIsBe_Doc_MainObj): uint32
proc instSub*(this: DefaultEndianExprIsBe_Doc_MainObj): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj
proc instInt(this: DefaultEndianExprIsBe_Doc_MainObj): uint32 = 
  if isSome(this.instIntInst):
    return get(this.instIntInst)
  let pos = this.io.pos()
  this.io.seek(2)
  if result.isLe:
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
  if result.isLe:
    this.instSubInst = some(DefaultEndianExprIsBe_Doc_MainObj_SubMainObj.read(this.io, this.root, this))
  else:
    this.instSubInst = some(DefaultEndianExprIsBe_Doc_MainObj_SubMainObj.read(this.io, this.root, this))
  this.io.seek(pos)
  return get(this.instSubInst)


proc readLe(subject: DefaultEndianExprIsBe_Doc_MainObj) =
  this.someInt = this.io.readU4le()
  this.someIntBe = this.io.readU2be()
  this.someIntLe = this.io.readU2le()
  result = this


proc readBe(subject: DefaultEndianExprIsBe_Doc_MainObj) =
  this.someInt = this.io.readU4be()
  this.someIntBe = this.io.readU2be()
  this.someIntLe = this.io.readU2le()
  result = this

proc read*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj], io: KaitaiStream, root: DefaultEndianExprIsBe, parent: DefaultEndianExprIsBe_Doc): DefaultEndianExprIsBe_Doc_MainObj =
  let this = new(DefaultEndianExprIsBe_Doc_MainObj)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  this.io = io
  this.root = root
  this.parent = parent
  result.isLe = false


  if result.isLe:
    readLe(result)
  else:
    readBe(result)
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj], filename: string): DefaultEndianExprIsBe_Doc_MainObj =
  DefaultEndianExprIsBe_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsBe_Doc_MainObjObj) =
  close(x.io)

## DefaultEndianExprIsBe_Doc
proc read*(_: typedesc[DefaultEndianExprIsBe_Doc], io: KaitaiStream, root: DefaultEndianExprIsBe, parent: DefaultEndianExprIsBe): DefaultEndianExprIsBe_Doc =
  let this = new(DefaultEndianExprIsBe_Doc)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.indicator = this.io.readBytes(int(2))
  this.main = DefaultEndianExprIsBe_Doc_MainObj.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprIsBe_Doc], filename: string): DefaultEndianExprIsBe_Doc =
  DefaultEndianExprIsBe_Doc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsBe_DocObj) =
  close(x.io)

## DefaultEndianExprIsBe
proc read*(_: typedesc[DefaultEndianExprIsBe], io: KaitaiStream, root: DefaultEndianExprIsBe, parent: ref RootObj): DefaultEndianExprIsBe =
  let this = new(DefaultEndianExprIsBe)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.docs = newSeq[DefaultEndianExprIsBe_Doc]()
  block:
    var i: int
    while not this.io.eof:
      this.docs.add(DefaultEndianExprIsBe_Doc.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprIsBe], filename: string): DefaultEndianExprIsBe =
  DefaultEndianExprIsBe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsBeObj) =
  close(x.io)

