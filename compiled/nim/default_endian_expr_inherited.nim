import kaitai_struct_nim_runtime
import options

type
  DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj* = ref DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObjObj
  DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObjObj* = object
    someInt1*: uint16
    someInt2*: uint16
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: DefaultEndianExprInherited_Doc_MainObj_SubObj
    someInstInst*: Option[uint32]
    isLe: bool
  DefaultEndianExprInherited_Doc_MainObj_SubObj* = ref DefaultEndianExprInherited_Doc_MainObj_SubObjObj
  DefaultEndianExprInherited_Doc_MainObj_SubObjObj* = object
    someInt*: uint32
    more*: DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: DefaultEndianExprInherited_Doc_MainObj
    isLe: bool
  DefaultEndianExprInherited_Doc_MainObj* = ref DefaultEndianExprInherited_Doc_MainObjObj
  DefaultEndianExprInherited_Doc_MainObjObj* = object
    insides*: DefaultEndianExprInherited_Doc_MainObj_SubObj
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: DefaultEndianExprInherited_Doc
    isLe: bool
  DefaultEndianExprInherited_Doc* = ref DefaultEndianExprInherited_DocObj
  DefaultEndianExprInherited_DocObj* = object
    indicator*: string
    main*: DefaultEndianExprInherited_Doc_MainObj
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: DefaultEndianExprInherited
  DefaultEndianExprInherited* = ref DefaultEndianExprInheritedObj
  DefaultEndianExprInheritedObj* = object
    docs*: seq[DefaultEndianExprInherited_Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: ref RootObj

## DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj
proc someInst*(this: DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj): uint32
proc someInst(this: DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj): uint32 = 
  if isSome(this.someInstInst):
    return get(this.someInstInst)
  let pos = this.io.pos()
  this.io.seek(2)
  if result.isLe:
    this.someInstInst = some(this.io.readU4le())
  else:
    this.someInstInst = some(this.io.readU4be())
  this.io.seek(pos)
  return get(this.someInstInst)


proc readLe(subject: DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj) =
  this.someInt1 = this.io.readU2le()
  this.someInt2 = this.io.readU2le()
  result = this


proc readBe(subject: DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj) =
  this.someInt1 = this.io.readU2be()
  this.someInt2 = this.io.readU2be()
  result = this

proc read*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj], io: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInherited_Doc_MainObj_SubObj): DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj =
  let this = new(DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  this.io = io
  this.root = root
  this.parent = parent
  result.isLe = result.parent.isLe


  if result.isLe:
    readLe(result)
  else:
    readBe(result)
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj], filename: string): DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj =
  DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObjObj) =
  close(x.io)

## DefaultEndianExprInherited_Doc_MainObj_SubObj

proc readLe(subject: DefaultEndianExprInherited_Doc_MainObj_SubObj) =
  this.someInt = this.io.readU4le()
  this.more = DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj.read(this.io, this.root, this)
  result = this


proc readBe(subject: DefaultEndianExprInherited_Doc_MainObj_SubObj) =
  this.someInt = this.io.readU4be()
  this.more = DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj.read(this.io, this.root, this)
  result = this

proc read*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj], io: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInherited_Doc_MainObj): DefaultEndianExprInherited_Doc_MainObj_SubObj =
  let this = new(DefaultEndianExprInherited_Doc_MainObj_SubObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  this.io = io
  this.root = root
  this.parent = parent
  result.isLe = result.parent.isLe


  if result.isLe:
    readLe(result)
  else:
    readBe(result)
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj], filename: string): DefaultEndianExprInherited_Doc_MainObj_SubObj =
  DefaultEndianExprInherited_Doc_MainObj_SubObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInherited_Doc_MainObj_SubObjObj) =
  close(x.io)

## DefaultEndianExprInherited_Doc_MainObj

proc readLe(subject: DefaultEndianExprInherited_Doc_MainObj) =
  this.insides = DefaultEndianExprInherited_Doc_MainObj_SubObj.read(this.io, this.root, this)
  result = this


proc readBe(subject: DefaultEndianExprInherited_Doc_MainObj) =
  this.insides = DefaultEndianExprInherited_Doc_MainObj_SubObj.read(this.io, this.root, this)
  result = this

proc read*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj], io: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInherited_Doc): DefaultEndianExprInherited_Doc_MainObj =
  let this = new(DefaultEndianExprInherited_Doc_MainObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  this.io = io
  this.root = root
  this.parent = parent
  result.isLe = false


  if result.isLe:
    readLe(result)
  else:
    readBe(result)
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj], filename: string): DefaultEndianExprInherited_Doc_MainObj =
  DefaultEndianExprInherited_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInherited_Doc_MainObjObj) =
  close(x.io)

## DefaultEndianExprInherited_Doc
proc read*(_: typedesc[DefaultEndianExprInherited_Doc], io: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInherited): DefaultEndianExprInherited_Doc =
  let this = new(DefaultEndianExprInherited_Doc)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.indicator = this.io.readBytes(int(2))
  this.main = DefaultEndianExprInherited_Doc_MainObj.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprInherited_Doc], filename: string): DefaultEndianExprInherited_Doc =
  DefaultEndianExprInherited_Doc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInherited_DocObj) =
  close(x.io)

## DefaultEndianExprInherited
proc read*(_: typedesc[DefaultEndianExprInherited], io: KaitaiStream, root: DefaultEndianExprInherited, parent: ref RootObj): DefaultEndianExprInherited =
  let this = new(DefaultEndianExprInherited)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.docs = newSeq[DefaultEndianExprInherited_Doc]()
  block:
    var i: int
    while not this.io.eof:
      this.docs.add(DefaultEndianExprInherited_Doc.read(this.io, this.root, this))
      inc i
  result = this

proc fromFile*(_: typedesc[DefaultEndianExprInherited], filename: string): DefaultEndianExprInherited =
  DefaultEndianExprInherited.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInheritedObj) =
  close(x.io)

