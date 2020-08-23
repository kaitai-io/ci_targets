import kaitai_struct_nim_runtime
import options

type
  DefaultEndianExprInherited* = ref object of KaitaiStruct
    `docs`*: seq[DefaultEndianExprInherited_Doc]
    `parent`*: KaitaiStruct
  DefaultEndianExprInherited_Doc* = ref object of KaitaiStruct
    `indicator`*: seq[byte]
    `main`*: DefaultEndianExprInherited_Doc_MainObj
    `parent`*: DefaultEndianExprInherited
  DefaultEndianExprInherited_Doc_MainObj* = ref object of KaitaiStruct
    `insides`*: DefaultEndianExprInherited_Doc_MainObj_SubObj
    `parent`*: DefaultEndianExprInherited_Doc
    isLe: bool
  DefaultEndianExprInherited_Doc_MainObj_SubObj* = ref object of KaitaiStruct
    `someInt`*: uint32
    `more`*: DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj
    `parent`*: DefaultEndianExprInherited_Doc_MainObj
    isLe: bool
  DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj* = ref object of KaitaiStruct
    `someInt1`*: uint16
    `someInt2`*: uint16
    `parent`*: DefaultEndianExprInherited_Doc_MainObj_SubObj
    `someInstInst`*: uint32
    isLe: bool

proc read*(_: typedesc[DefaultEndianExprInherited], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultEndianExprInherited
proc read*(_: typedesc[DefaultEndianExprInherited_Doc], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprInherited): DefaultEndianExprInherited_Doc
proc read*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprInherited_Doc): DefaultEndianExprInherited_Doc_MainObj
proc read*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprInherited_Doc_MainObj): DefaultEndianExprInherited_Doc_MainObj_SubObj
proc read*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprInherited_Doc_MainObj_SubObj): DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj

proc someInst*(this: DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj): uint32

proc read*(_: typedesc[DefaultEndianExprInherited], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultEndianExprInherited =
  template this: untyped = result
  this = new(DefaultEndianExprInherited)
  let root = if root == nil: cast[DefaultEndianExprInherited](this) else: cast[DefaultEndianExprInherited](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = DefaultEndianExprInherited_Doc.read(this.io, this.root, this)
      this.docs.add(it)
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprInherited], filename: string): DefaultEndianExprInherited =
  DefaultEndianExprInherited.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DefaultEndianExprInherited_Doc], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprInherited): DefaultEndianExprInherited_Doc =
  template this: untyped = result
  this = new(DefaultEndianExprInherited_Doc)
  let root = if root == nil: cast[DefaultEndianExprInherited](this) else: cast[DefaultEndianExprInherited](root)
  this.io = io
  this.root = root
  this.parent = parent

  let indicatorExpr = this.io.readBytes(int(2))
  this.indicator = indicatorExpr
  let mainExpr = DefaultEndianExprInherited_Doc_MainObj.read(this.io, this.root, this)
  this.main = mainExpr

proc fromFile*(_: typedesc[DefaultEndianExprInherited_Doc], filename: string): DefaultEndianExprInherited_Doc =
  DefaultEndianExprInherited_Doc.read(newKaitaiFileStream(filename), nil, nil)


proc readLe(this: DefaultEndianExprInherited_Doc_MainObj) =
  let insidesExpr = DefaultEndianExprInherited_Doc_MainObj_SubObj.read(this.io, this.root, this)
  this.insides = insidesExpr


proc readBe(this: DefaultEndianExprInherited_Doc_MainObj) =
  let insidesExpr = DefaultEndianExprInherited_Doc_MainObj_SubObj.read(this.io, this.root, this)
  this.insides = insidesExpr

proc read*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprInherited_Doc): DefaultEndianExprInherited_Doc_MainObj =
  template this: untyped = result
  this = new(DefaultEndianExprInherited_Doc_MainObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](this) else: cast[DefaultEndianExprInherited](root)
  this.io = io
  this.root = root
  this.parent = parent
  this.isLe = false

  block:
    let on = this.parent.indicator
    if on == @[73'u8, 73'u8]:
      let isLeExpr = bool(true)
      this.isLe = isLeExpr
    else:
      let isLeExpr = bool(false)
      this.isLe = isLeExpr

  if this.isLe:
    readLe(this)
  else:
    readBe(this)

proc fromFile*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj], filename: string): DefaultEndianExprInherited_Doc_MainObj =
  DefaultEndianExprInherited_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)


proc readLe(this: DefaultEndianExprInherited_Doc_MainObj_SubObj) =
  let someIntExpr = this.io.readU4le()
  this.someInt = someIntExpr
  let moreExpr = DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj.read(this.io, this.root, this)
  this.more = moreExpr


proc readBe(this: DefaultEndianExprInherited_Doc_MainObj_SubObj) =
  let someIntExpr = this.io.readU4be()
  this.someInt = someIntExpr
  let moreExpr = DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj.read(this.io, this.root, this)
  this.more = moreExpr

proc read*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprInherited_Doc_MainObj): DefaultEndianExprInherited_Doc_MainObj_SubObj =
  template this: untyped = result
  this = new(DefaultEndianExprInherited_Doc_MainObj_SubObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](this) else: cast[DefaultEndianExprInherited](root)
  this.io = io
  this.root = root
  this.parent = parent
  this.isLe = this.parent.isLe


  if this.isLe:
    readLe(this)
  else:
    readBe(this)

proc fromFile*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj], filename: string): DefaultEndianExprInherited_Doc_MainObj_SubObj =
  DefaultEndianExprInherited_Doc_MainObj_SubObj.read(newKaitaiFileStream(filename), nil, nil)


proc readLe(this: DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj) =
  let someInt1Expr = this.io.readU2le()
  this.someInt1 = someInt1Expr
  let someInt2Expr = this.io.readU2le()
  this.someInt2 = someInt2Expr


proc readBe(this: DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj) =
  let someInt1Expr = this.io.readU2be()
  this.someInt1 = someInt1Expr
  let someInt2Expr = this.io.readU2be()
  this.someInt2 = someInt2Expr

proc read*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprInherited_Doc_MainObj_SubObj): DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj =
  template this: untyped = result
  this = new(DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](this) else: cast[DefaultEndianExprInherited](root)
  this.io = io
  this.root = root
  this.parent = parent
  this.isLe = this.parent.isLe


  if this.isLe:
    readLe(this)
  else:
    readBe(this)

proc someInst(this: DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj): uint32 = 
  if this.someInstInst != nil:
    return this.someInstInst
  let pos = this.io.pos()
  this.io.seek(int(2))
  if this.isLe:
    let someInstInstExpr = this.io.readU4le()
    this.someInstInst = someInstInstExpr
  else:
    let someInstInstExpr = this.io.readU4be()
    this.someInstInst = someInstInstExpr
  this.io.seek(pos)
  if this.someInstInst != nil:
    return this.someInstInst

proc fromFile*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj], filename: string): DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj =
  DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj.read(newKaitaiFileStream(filename), nil, nil)

