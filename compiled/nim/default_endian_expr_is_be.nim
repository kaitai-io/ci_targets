import kaitai_struct_nim_runtime
import options

type
  DefaultEndianExprIsBe* = ref object of KaitaiStruct
    `docs`*: seq[DefaultEndianExprIsBe_Doc]
    `parent`*: KaitaiStruct
  DefaultEndianExprIsBe_Doc* = ref object of KaitaiStruct
    `indicator`*: seq[byte]
    `main`*: DefaultEndianExprIsBe_Doc_MainObj
    `parent`*: DefaultEndianExprIsBe
  DefaultEndianExprIsBe_Doc_MainObj* = ref object of KaitaiStruct
    `someInt`*: uint32
    `someIntBe`*: uint16
    `someIntLe`*: uint16
    `parent`*: DefaultEndianExprIsBe_Doc
    `instIntInst`: uint32
    `instIntInstFlag`: bool
    `instSubInst`: DefaultEndianExprIsBe_Doc_MainObj_SubMainObj
    `instSubInstFlag`: bool
    isLe: bool
  DefaultEndianExprIsBe_Doc_MainObj_SubMainObj* = ref object of KaitaiStruct
    `foo`*: uint32
    `parent`*: DefaultEndianExprIsBe_Doc_MainObj
    isLe: bool

proc read*(_: typedesc[DefaultEndianExprIsBe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultEndianExprIsBe
proc read*(_: typedesc[DefaultEndianExprIsBe_Doc], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsBe): DefaultEndianExprIsBe_Doc
proc read*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsBe_Doc): DefaultEndianExprIsBe_Doc_MainObj
proc read*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj_SubMainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsBe_Doc_MainObj): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj

proc instInt*(this: DefaultEndianExprIsBe_Doc_MainObj): uint32
proc instSub*(this: DefaultEndianExprIsBe_Doc_MainObj): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj

proc read*(_: typedesc[DefaultEndianExprIsBe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultEndianExprIsBe =
  template this: untyped = result
  this = new(DefaultEndianExprIsBe)
  let root = if root == nil: cast[DefaultEndianExprIsBe](this) else: cast[DefaultEndianExprIsBe](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = DefaultEndianExprIsBe_Doc.read(this.io, this.root, this)
      this.docs.add(it)
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprIsBe], filename: string): DefaultEndianExprIsBe =
  DefaultEndianExprIsBe.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DefaultEndianExprIsBe_Doc], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsBe): DefaultEndianExprIsBe_Doc =
  template this: untyped = result
  this = new(DefaultEndianExprIsBe_Doc)
  let root = if root == nil: cast[DefaultEndianExprIsBe](this) else: cast[DefaultEndianExprIsBe](root)
  this.io = io
  this.root = root
  this.parent = parent

  let indicatorExpr = this.io.readBytes(int(2))
  this.indicator = indicatorExpr
  let mainExpr = DefaultEndianExprIsBe_Doc_MainObj.read(this.io, this.root, this)
  this.main = mainExpr

proc fromFile*(_: typedesc[DefaultEndianExprIsBe_Doc], filename: string): DefaultEndianExprIsBe_Doc =
  DefaultEndianExprIsBe_Doc.read(newKaitaiFileStream(filename), nil, nil)


proc readLe(this: DefaultEndianExprIsBe_Doc_MainObj) =
  let someIntExpr = this.io.readU4le()
  this.someInt = someIntExpr
  let someIntBeExpr = this.io.readU2be()
  this.someIntBe = someIntBeExpr
  let someIntLeExpr = this.io.readU2le()
  this.someIntLe = someIntLeExpr


proc readBe(this: DefaultEndianExprIsBe_Doc_MainObj) =
  let someIntExpr = this.io.readU4be()
  this.someInt = someIntExpr
  let someIntBeExpr = this.io.readU2be()
  this.someIntBe = someIntBeExpr
  let someIntLeExpr = this.io.readU2le()
  this.someIntLe = someIntLeExpr

proc read*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsBe_Doc): DefaultEndianExprIsBe_Doc_MainObj =
  template this: untyped = result
  this = new(DefaultEndianExprIsBe_Doc_MainObj)
  let root = if root == nil: cast[DefaultEndianExprIsBe](this) else: cast[DefaultEndianExprIsBe](root)
  this.io = io
  this.root = root
  this.parent = parent
  this.isLe = false

  block:
    let on = this.parent.indicator
    if on == @[77'u8, 77'u8]:
      let isLeExpr = bool(false)
      this.isLe = isLeExpr
    else:
      let isLeExpr = bool(true)
      this.isLe = isLeExpr

  if this.isLe:
    readLe(this)
  else:
    readBe(this)

proc instInt(this: DefaultEndianExprIsBe_Doc_MainObj): uint32 = 
  if this.instIntInstFlag:
    return this.instIntInst
  let pos = this.io.pos()
  this.io.seek(int(2))
  if this.isLe:
    let instIntInstExpr = this.io.readU4le()
    this.instIntInst = instIntInstExpr
  else:
    let instIntInstExpr = this.io.readU4be()
    this.instIntInst = instIntInstExpr
  this.io.seek(pos)
  this.instIntInstFlag = true
  return this.instIntInst

proc instSub(this: DefaultEndianExprIsBe_Doc_MainObj): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj = 
  if this.instSubInstFlag:
    return this.instSubInst
  let pos = this.io.pos()
  this.io.seek(int(2))
  if this.isLe:
    let instSubInstExpr = DefaultEndianExprIsBe_Doc_MainObj_SubMainObj.read(this.io, this.root, this)
    this.instSubInst = instSubInstExpr
  else:
    let instSubInstExpr = DefaultEndianExprIsBe_Doc_MainObj_SubMainObj.read(this.io, this.root, this)
    this.instSubInst = instSubInstExpr
  this.io.seek(pos)
  this.instSubInstFlag = true
  return this.instSubInst

proc fromFile*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj], filename: string): DefaultEndianExprIsBe_Doc_MainObj =
  DefaultEndianExprIsBe_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)


proc readLe(this: DefaultEndianExprIsBe_Doc_MainObj_SubMainObj) =
  let fooExpr = this.io.readU4le()
  this.foo = fooExpr


proc readBe(this: DefaultEndianExprIsBe_Doc_MainObj_SubMainObj) =
  let fooExpr = this.io.readU4be()
  this.foo = fooExpr

proc read*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj_SubMainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsBe_Doc_MainObj): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj =
  template this: untyped = result
  this = new(DefaultEndianExprIsBe_Doc_MainObj_SubMainObj)
  let root = if root == nil: cast[DefaultEndianExprIsBe](this) else: cast[DefaultEndianExprIsBe](root)
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

