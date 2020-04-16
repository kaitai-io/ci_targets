import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  DefaultEndianExprIsLe* = ref object of KaitaiStruct
    docs*: seq[DefaultEndianExprIsLe_Doc]
    parent*: KaitaiStruct
  DefaultEndianExprIsLe_Doc* = ref object of KaitaiStruct
    indicator*: seq[byte]
    main*: DefaultEndianExprIsLe_Doc_MainObj
    parent*: DefaultEndianExprIsLe
  DefaultEndianExprIsLe_Doc_MainObj* = ref object of KaitaiStruct
    someInt*: uint32
    someIntBe*: uint16
    someIntLe*: uint16
    parent*: DefaultEndianExprIsLe_Doc
    isLe: bool

proc read*(_: typedesc[DefaultEndianExprIsLe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultEndianExprIsLe
proc read*(_: typedesc[DefaultEndianExprIsLe_Doc], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsLe): DefaultEndianExprIsLe_Doc
proc read*(_: typedesc[DefaultEndianExprIsLe_Doc_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsLe_Doc): DefaultEndianExprIsLe_Doc_MainObj


proc read*(_: typedesc[DefaultEndianExprIsLe], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultEndianExprIsLe =
  template this: untyped = result
  this = new(DefaultEndianExprIsLe)
  let root = if root == nil: cast[DefaultEndianExprIsLe](this) else: cast[DefaultEndianExprIsLe](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = DefaultEndianExprIsLe_Doc.read(this.io, this.root, this)
      this.docs.add(it)
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprIsLe], filename: string): DefaultEndianExprIsLe =
  DefaultEndianExprIsLe.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DefaultEndianExprIsLe_Doc], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsLe): DefaultEndianExprIsLe_Doc =
  template this: untyped = result
  this = new(DefaultEndianExprIsLe_Doc)
  let root = if root == nil: cast[DefaultEndianExprIsLe](this) else: cast[DefaultEndianExprIsLe](root)
  this.io = io
  this.root = root
  this.parent = parent

  let indicatorExpr = this.io.readBytes(int(2))
  this.indicator = indicatorExpr
  let mainExpr = DefaultEndianExprIsLe_Doc_MainObj.read(this.io, this.root, this)
  this.main = mainExpr

proc fromFile*(_: typedesc[DefaultEndianExprIsLe_Doc], filename: string): DefaultEndianExprIsLe_Doc =
  DefaultEndianExprIsLe_Doc.read(newKaitaiFileStream(filename), nil, nil)


proc readLe(this: DefaultEndianExprIsLe_Doc_MainObj) =
  let someIntExpr = this.io.readU4le()
  this.someInt = someIntExpr
  let someIntBeExpr = this.io.readU2be()
  this.someIntBe = someIntBeExpr
  let someIntLeExpr = this.io.readU2le()
  this.someIntLe = someIntLeExpr


proc readBe(this: DefaultEndianExprIsLe_Doc_MainObj) =
  let someIntExpr = this.io.readU4be()
  this.someInt = someIntExpr
  let someIntBeExpr = this.io.readU2be()
  this.someIntBe = someIntBeExpr
  let someIntLeExpr = this.io.readU2le()
  this.someIntLe = someIntLeExpr

proc read*(_: typedesc[DefaultEndianExprIsLe_Doc_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprIsLe_Doc): DefaultEndianExprIsLe_Doc_MainObj =
  template this: untyped = result
  this = new(DefaultEndianExprIsLe_Doc_MainObj)
  let root = if root == nil: cast[DefaultEndianExprIsLe](this) else: cast[DefaultEndianExprIsLe](root)
  this.io = io
  this.root = root
  this.parent = parent
  this.isLe = false

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

proc fromFile*(_: typedesc[DefaultEndianExprIsLe_Doc_MainObj], filename: string): DefaultEndianExprIsLe_Doc_MainObj =
  DefaultEndianExprIsLe_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)

