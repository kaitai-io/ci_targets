import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  DefaultEndianExprException* = ref object of KaitaiStruct
    docs*: seq[DefaultEndianExprException_Doc]
    parent*: KaitaiStruct
  DefaultEndianExprException_Doc* = ref object of KaitaiStruct
    indicator*: seq[byte]
    main*: DefaultEndianExprException_Doc_MainObj
    parent*: DefaultEndianExprException
  DefaultEndianExprException_Doc_MainObj* = ref object of KaitaiStruct
    someInt*: uint32
    someIntBe*: uint16
    someIntLe*: uint16
    parent*: DefaultEndianExprException_Doc
    isLe: bool

proc read*(_: typedesc[DefaultEndianExprException], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultEndianExprException
proc read*(_: typedesc[DefaultEndianExprException_Doc], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprException): DefaultEndianExprException_Doc
proc read*(_: typedesc[DefaultEndianExprException_Doc_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprException_Doc): DefaultEndianExprException_Doc_MainObj


proc read*(_: typedesc[DefaultEndianExprException], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): DefaultEndianExprException =
  template this: untyped = result
  this = new(DefaultEndianExprException)
  let root = if root == nil: cast[DefaultEndianExprException](this) else: cast[DefaultEndianExprException](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      this.docs.add(DefaultEndianExprException_Doc.read(this.io, this.root, this))
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprException], filename: string): DefaultEndianExprException =
  DefaultEndianExprException.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[DefaultEndianExprException_Doc], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprException): DefaultEndianExprException_Doc =
  template this: untyped = result
  this = new(DefaultEndianExprException_Doc)
  let root = if root == nil: cast[DefaultEndianExprException](this) else: cast[DefaultEndianExprException](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.indicator = this.io.readBytes(int(2))
  this.main = DefaultEndianExprException_Doc_MainObj.read(this.io, this.root, this)

proc fromFile*(_: typedesc[DefaultEndianExprException_Doc], filename: string): DefaultEndianExprException_Doc =
  DefaultEndianExprException_Doc.read(newKaitaiFileStream(filename), nil, nil)


proc readLe(this: DefaultEndianExprException_Doc_MainObj) =
  this.someInt = this.io.readU4le()
  this.someIntBe = this.io.readU2be()
  this.someIntLe = this.io.readU2le()


proc readBe(this: DefaultEndianExprException_Doc_MainObj) =
  this.someInt = this.io.readU4be()
  this.someIntBe = this.io.readU2be()
  this.someIntLe = this.io.readU2le()

proc read*(_: typedesc[DefaultEndianExprException_Doc_MainObj], io: KaitaiStream, root: KaitaiStruct, parent: DefaultEndianExprException_Doc): DefaultEndianExprException_Doc_MainObj =
  template this: untyped = result
  this = new(DefaultEndianExprException_Doc_MainObj)
  let root = if root == nil: cast[DefaultEndianExprException](this) else: cast[DefaultEndianExprException](root)
  this.io = io
  this.root = root
  this.parent = parent
  this.isLe = false

  let on = this.parent.indicator
  if on == @[73'u8, 73'u8]:
    this.isLe = bool(true)
  elif on == @[77'u8, 77'u8]:
    this.isLe = bool(false)

  if this.isLe:
    readLe(this)
  else:
    readBe(this)

proc fromFile*(_: typedesc[DefaultEndianExprException_Doc_MainObj], filename: string): DefaultEndianExprException_Doc_MainObj =
  DefaultEndianExprException_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)

