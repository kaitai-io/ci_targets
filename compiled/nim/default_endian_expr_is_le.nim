import kaitai_struct_nim_runtime

type
  DefaultEndianExprIsLe_Doc_MainObj* = ref DefaultEndianExprIsLe_Doc_MainObjObj
  DefaultEndianExprIsLe_Doc_MainObjObj* = object
    someInt*: uint32
    someIntBe*: uint16
    someIntLe*: uint16
    io*: KaitaiStream
    root*: DefaultEndianExprIsLe
    parent*: DefaultEndianExprIsLe_Doc
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
proc read*(_: typedesc[DefaultEndianExprIsLe_Doc_MainObj], io: KaitaiStream, root: DefaultEndianExprIsLe, parent: DefaultEndianExprIsLe_Doc): DefaultEndianExprIsLe_Doc_MainObj =
  result = new(DefaultEndianExprIsLe_Doc_MainObj)
  let root = if root == nil: cast[DefaultEndianExprIsLe](result) else: root
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

proc fromFile*(_: typedesc[DefaultEndianExprIsLe_Doc_MainObj], filename: string): DefaultEndianExprIsLe_Doc_MainObj =
  DefaultEndianExprIsLe_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsLe_Doc_MainObjObj) =
  close(x.io)

### DefaultEndianExprIsLe_Doc ###
proc read*(_: typedesc[DefaultEndianExprIsLe_Doc], io: KaitaiStream, root: DefaultEndianExprIsLe, parent: DefaultEndianExprIsLe): DefaultEndianExprIsLe_Doc =
  result = new(DefaultEndianExprIsLe_Doc)
  let root = if root == nil: cast[DefaultEndianExprIsLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let indicator = io.readBytes(int(2))
  result.indicator = indicator
  let main = DefaultEndianExprIsLe_Doc_MainObj.read(io, result, root)
  result.main = main

proc fromFile*(_: typedesc[DefaultEndianExprIsLe_Doc], filename: string): DefaultEndianExprIsLe_Doc =
  DefaultEndianExprIsLe_Doc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsLe_DocObj) =
  close(x.io)

### DefaultEndianExprIsLe ###
proc read*(_: typedesc[DefaultEndianExprIsLe], io: KaitaiStream, root: DefaultEndianExprIsLe, parent: ref RootObj): DefaultEndianExprIsLe =
  result = new(DefaultEndianExprIsLe)
  let root = if root == nil: cast[DefaultEndianExprIsLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  docs = newSeq[DefaultEndianExprIsLe_Doc]()
  block:
    var i: int
    while not io.eof:
      docs.add(DefaultEndianExprIsLe_Doc.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprIsLe], filename: string): DefaultEndianExprIsLe =
  DefaultEndianExprIsLe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsLeObj) =
  close(x.io)

