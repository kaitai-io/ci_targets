import kaitai_struct_nim_runtime
import options

type
  DefaultEndianExprException_Doc_MainObj* = ref DefaultEndianExprException_Doc_MainObjObj
  DefaultEndianExprException_Doc_MainObjObj* = object
    someInt*: uint32
    someIntBe*: uint16
    someIntLe*: uint16
    io*: KaitaiStream
    root*: DefaultEndianExprException
    parent*: DefaultEndianExprException_Doc
    isLe: bool
  DefaultEndianExprException_Doc* = ref DefaultEndianExprException_DocObj
  DefaultEndianExprException_DocObj* = object
    indicator*: string
    main*: DefaultEndianExprException_Doc_MainObj
    io*: KaitaiStream
    root*: DefaultEndianExprException
    parent*: DefaultEndianExprException
  DefaultEndianExprException* = ref DefaultEndianExprExceptionObj
  DefaultEndianExprExceptionObj* = object
    docs*: seq[DefaultEndianExprException_Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprException
    parent*: ref RootObj

## DefaultEndianExprException_Doc_MainObj

proc readLe(subject: DefaultEndianExprException_Doc_MainObj) =
  this.someInt = this.io.readU4le()
  this.someIntBe = this.io.readU2be()
  this.someIntLe = this.io.readU2le()
  result = this


proc readBe(subject: DefaultEndianExprException_Doc_MainObj) =
  this.someInt = this.io.readU4be()
  this.someIntBe = this.io.readU2be()
  this.someIntLe = this.io.readU2le()
  result = this

proc read*(_: typedesc[DefaultEndianExprException_Doc_MainObj], io: KaitaiStream, root: DefaultEndianExprException, parent: DefaultEndianExprException_Doc): DefaultEndianExprException_Doc_MainObj =
  let this = new(DefaultEndianExprException_Doc_MainObj)
  let root = if root == nil: cast[DefaultEndianExprException](result) else: root
  this.io = io
  this.root = root
  this.parent = parent
  result.isLe = false


  if result.isLe:
    readLe(result)
  else:
    readBe(result)
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprException_Doc_MainObj], filename: string): DefaultEndianExprException_Doc_MainObj =
  DefaultEndianExprException_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprException_Doc_MainObjObj) =
  close(x.io)

## DefaultEndianExprException_Doc
proc read*(_: typedesc[DefaultEndianExprException_Doc], io: KaitaiStream, root: DefaultEndianExprException, parent: DefaultEndianExprException): DefaultEndianExprException_Doc =
  let this = new(DefaultEndianExprException_Doc)
  let root = if root == nil: cast[DefaultEndianExprException](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.indicator = this.io.readBytes(int(2))
  this.main = DefaultEndianExprException_Doc_MainObj.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprException_Doc], filename: string): DefaultEndianExprException_Doc =
  DefaultEndianExprException_Doc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprException_DocObj) =
  close(x.io)

## DefaultEndianExprException
proc read*(_: typedesc[DefaultEndianExprException], io: KaitaiStream, root: DefaultEndianExprException, parent: ref RootObj): DefaultEndianExprException =
  let this = new(DefaultEndianExprException)
  let root = if root == nil: cast[DefaultEndianExprException](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.docs = newSeq[DefaultEndianExprException_Doc]()
  block:
    var i: int
    while not this.io.eof:
      this.docs.add(DefaultEndianExprException_Doc.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprException], filename: string): DefaultEndianExprException =
  DefaultEndianExprException.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprExceptionObj) =
  close(x.io)

