import kaitai_struct_nim_runtime

type
  DefaultEndianExprException_Doc_MainObj* = ref DefaultEndianExprException_Doc_MainObjObj
  DefaultEndianExprException_Doc_MainObjObj* = object
    someInt*: uint32
    someIntBe*: uint16
    someIntLe*: uint16
    io*: KaitaiStream
    root*: DefaultEndianExprException
    parent*: DefaultEndianExprException_Doc
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

### DefaultEndianExprException_Doc_MainObj ###
proc read*(_: typedesc[DefaultEndianExprException_Doc_MainObj], io: KaitaiStream, root: DefaultEndianExprException, parent: DefaultEndianExprException_Doc): DefaultEndianExprException_Doc_MainObj =
  result = new(DefaultEndianExprException_Doc_MainObj)
  let root = if root == nil: cast[DefaultEndianExprException](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let isLe = true
  result.isLe = isLe
  let isLe = false
  result.isLe = isLe

  if isNone(isLe):
    raise newException(KaitaiError, "Kaitai Struct error")
  elif isLe:
    readLe()
  else:
    readBe()
  let someInt = io.readU4le()
  result.someInt = someInt
  let someIntBe = io.readU2be()
  result.someIntBe = someIntBe
  let someIntLe = io.readU2le()
  result.someIntLe = someIntLe
  let someInt = io.readU4be()
  result.someInt = someInt
  let someIntBe = io.readU2be()
  result.someIntBe = someIntBe
  let someIntLe = io.readU2le()
  result.someIntLe = someIntLe

proc fromFile*(_: typedesc[DefaultEndianExprException_Doc_MainObj], filename: string): DefaultEndianExprException_Doc_MainObj =
  DefaultEndianExprException_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprException_Doc_MainObjObj) =
  close(x.io)

### DefaultEndianExprException_Doc ###
proc read*(_: typedesc[DefaultEndianExprException_Doc], io: KaitaiStream, root: DefaultEndianExprException, parent: DefaultEndianExprException): DefaultEndianExprException_Doc =
  result = new(DefaultEndianExprException_Doc)
  let root = if root == nil: cast[DefaultEndianExprException](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let indicator = io.readBytes(int(2))
  result.indicator = indicator
  let main = DefaultEndianExprException_Doc_MainObj.read(io, result, root)
  result.main = main

proc fromFile*(_: typedesc[DefaultEndianExprException_Doc], filename: string): DefaultEndianExprException_Doc =
  DefaultEndianExprException_Doc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprException_DocObj) =
  close(x.io)

### DefaultEndianExprException ###
proc read*(_: typedesc[DefaultEndianExprException], io: KaitaiStream, root: DefaultEndianExprException, parent: ref RootObj): DefaultEndianExprException =
  result = new(DefaultEndianExprException)
  let root = if root == nil: cast[DefaultEndianExprException](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  docs = newSeq[DefaultEndianExprException_Doc]()
  block:
    var i: int
    while not io.eof:
      docs.add(DefaultEndianExprException_Doc.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprException], filename: string): DefaultEndianExprException =
  DefaultEndianExprException.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprExceptionObj) =
  close(x.io)

