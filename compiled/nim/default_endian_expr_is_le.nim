import kaitai_struct_nim_runtime
import options

type
  DefaultEndianExprIsLe_Doc_MainObj* = ref DefaultEndianExprIsLe_Doc_MainObjObj
  DefaultEndianExprIsLe_Doc_MainObjObj* = object
    someInt*: uint32
    someIntBe*: uint16
    someIntLe*: uint16
    io*: KaitaiStream
    root*: DefaultEndianExprIsLe
    parent*: DefaultEndianExprIsLe_Doc
    isLe: bool
  DefaultEndianExprIsLe_Doc* = ref DefaultEndianExprIsLe_DocObj
  DefaultEndianExprIsLe_DocObj* = object
    indicator*: string
    main*: DefaultEndianExprIsLe_Doc_MainObj
    io*: KaitaiStream
    root*: DefaultEndianExprIsLe
    parent*: DefaultEndianExprIsLe
  DefaultEndianExprIsLe* = ref DefaultEndianExprIsLeObj
  DefaultEndianExprIsLeObj* = object
    docs*: seq[DefaultEndianExprIsLe_Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprIsLe
    parent*: ref RootObj

### DefaultEndianExprIsLe_Doc_MainObj ###

proc readLe(subject: DefaultEndianExprIsLe_Doc_MainObj) =
  let someInt = this.io.readU4le()
  this.someInt = someInt
  let someIntBe = this.io.readU2be()
  this.someIntBe = someIntBe
  let someIntLe = this.io.readU2le()
  this.someIntLe = someIntLe
  result = this


proc readBe(subject: DefaultEndianExprIsLe_Doc_MainObj) =
  let someInt = this.io.readU4be()
  this.someInt = someInt
  let someIntBe = this.io.readU2be()
  this.someIntBe = someIntBe
  let someIntLe = this.io.readU2le()
  this.someIntLe = someIntLe
  result = this

proc read*(_: typedesc[DefaultEndianExprIsLe_Doc_MainObj], io: KaitaiStream, root: DefaultEndianExprIsLe, parent: DefaultEndianExprIsLe_Doc): DefaultEndianExprIsLe_Doc_MainObj =
  let this = new(DefaultEndianExprIsLe_Doc_MainObj)
  let root = if root == nil: cast[DefaultEndianExprIsLe](result) else: root
  this.io = io
  this.root = root
  this.parent = parent
  result.isLe = false


  if result.isLe:
    readLe(result)
  else:
    readBe(result)
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprIsLe_Doc_MainObj], filename: string): DefaultEndianExprIsLe_Doc_MainObj =
  DefaultEndianExprIsLe_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsLe_Doc_MainObjObj) =
  close(x.io)

### DefaultEndianExprIsLe_Doc ###
proc read*(_: typedesc[DefaultEndianExprIsLe_Doc], io: KaitaiStream, root: DefaultEndianExprIsLe, parent: DefaultEndianExprIsLe): DefaultEndianExprIsLe_Doc =
  let this = new(DefaultEndianExprIsLe_Doc)
  let root = if root == nil: cast[DefaultEndianExprIsLe](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let indicator = this.io.readBytes(int(2))
  this.indicator = indicator
  let main = DefaultEndianExprIsLe_Doc_MainObj.read(this.io, this.root, this)
  this.main = main
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprIsLe_Doc], filename: string): DefaultEndianExprIsLe_Doc =
  DefaultEndianExprIsLe_Doc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsLe_DocObj) =
  close(x.io)

### DefaultEndianExprIsLe ###
proc read*(_: typedesc[DefaultEndianExprIsLe], io: KaitaiStream, root: DefaultEndianExprIsLe, parent: ref RootObj): DefaultEndianExprIsLe =
  let this = new(DefaultEndianExprIsLe)
  let root = if root == nil: cast[DefaultEndianExprIsLe](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.docs = newSeq[DefaultEndianExprIsLe_Doc]()
  block:
    var i: int
    while not this.io.eof:
      this.docs.add(DefaultEndianExprIsLe_Doc.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprIsLe], filename: string): DefaultEndianExprIsLe =
  DefaultEndianExprIsLe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsLeObj) =
  close(x.io)

