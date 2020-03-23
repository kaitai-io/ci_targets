import kaitai_struct_nim_runtime

type
  DefaultEndianExprExceptiondocmainObj* = ref DefaultEndianExprExceptiondocmainObjObj
  DefaultEndianExprExceptiondocmainObjObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprException
    parent*: ref RootObj
  DefaultEndianExprExceptiondoc* = ref DefaultEndianExprExceptiondocObj
  DefaultEndianExprExceptiondocObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprException
    parent*: ref RootObj
  DefaultEndianExprException* = ref DefaultEndianExprExceptionObj
  DefaultEndianExprExceptionObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprException
    parent*: ref RootObj

### DefaultEndianExprExceptiondocmainObj ###
proc read*(_: typedesc[DefaultEndianExprExceptiondocmainObj], io: KaitaiStream, root: DefaultEndianExprException, parent: DefaultEndianExprExceptiondoc): DefaultEndianExprExceptiondocmainObj =
  result = new(DefaultEndianExprExceptiondocmainObj)
  let root = if root == nil: cast[DefaultEndianExprException](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.isLe = true
  result.isLe = false

  if isNone(isLe):
    raise newException(KaitaiError, "Kaitai Struct error")
  elif isLe:
    readLe()
  else:
    readBe()
  result.someInt = result.io.readU4le()
  result.someIntBe = result.io.readU2be()
  result.someIntLe = result.io.readU2le()
  result.someInt = result.io.readU4be()
  result.someIntBe = result.io.readU2be()
  result.someIntLe = result.io.readU2le()

proc fromFile*(_: typedesc[DefaultEndianExprExceptiondocmainObj], filename: string): DefaultEndianExprExceptiondocmainObj =
  DefaultEndianExprExceptiondocmainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprExceptiondocmainObjObj) =
  close(x.io)

### DefaultEndianExprExceptiondoc ###
proc read*(_: typedesc[DefaultEndianExprExceptiondoc], io: KaitaiStream, root: DefaultEndianExprException, parent: DefaultEndianExprException): DefaultEndianExprExceptiondoc =
  result = new(DefaultEndianExprExceptiondoc)
  let root = if root == nil: cast[DefaultEndianExprException](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.indicator = result.io.readBytes(2)
  result.main = MainObj.read(result.io, result, root)

proc fromFile*(_: typedesc[DefaultEndianExprExceptiondoc], filename: string): DefaultEndianExprExceptiondoc =
  DefaultEndianExprExceptiondoc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprExceptiondocObj) =
  close(x.io)

### DefaultEndianExprException ###
proc read*(_: typedesc[DefaultEndianExprException], io: KaitaiStream, root: DefaultEndianExprException, parent: ref RootObj): DefaultEndianExprException =
  result = new(DefaultEndianExprException)
  let root = if root == nil: cast[DefaultEndianExprException](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.docs = newSeq[Doc]()
  block:
    var i: int
    while not result.io.eof:
      result.docs.add(Doc.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprException], filename: string): DefaultEndianExprException =
  DefaultEndianExprException.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprExceptionObj) =
  close(x.io)

