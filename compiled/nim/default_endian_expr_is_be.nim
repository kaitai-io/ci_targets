import kaitai_struct_nim_runtime

type
  DefaultEndianExprIsBe_Doc_MainObj_SubMainObj* = ref DefaultEndianExprIsBe_Doc_MainObj_SubMainObjObj
  DefaultEndianExprIsBe_Doc_MainObj_SubMainObjObj* = object
    foo*: uint32
    io*: KaitaiStream
    root*: DefaultEndianExprIsBe
    parent*: DefaultEndianExprIsBe_Doc_MainObj
  DefaultEndianExprIsBe_Doc_MainObj* = ref DefaultEndianExprIsBe_Doc_MainObjObj
  DefaultEndianExprIsBe_Doc_MainObjObj* = object
    someInt*: uint32
    someIntBe*: uint16
    someIntLe*: uint16
    io*: KaitaiStream
    root*: DefaultEndianExprIsBe
    parent*: DefaultEndianExprIsBe_Doc
  DefaultEndianExprIsBe_Doc* = ref DefaultEndianExprIsBe_DocObj
  DefaultEndianExprIsBe_DocObj* = object
    indicator*: string
    main*: DefaultEndianExprIsBe_Doc_MainObj
    io*: KaitaiStream
    root*: DefaultEndianExprIsBe
    parent*: DefaultEndianExprIsBe
  DefaultEndianExprIsBe* = ref DefaultEndianExprIsBeObj
  DefaultEndianExprIsBeObj* = object
    docs*: seq[DefaultEndianExprIsBe_Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprIsBe
    parent*: ref RootObj

### DefaultEndianExprIsBe_Doc_MainObj_SubMainObj ###
proc read*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj_SubMainObj], io: KaitaiStream, root: DefaultEndianExprIsBe, parent: DefaultEndianExprIsBe_Doc_MainObj): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj =
  result = new(DefaultEndianExprIsBe_Doc_MainObj_SubMainObj)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  if isNone(isLe):
    raise newException(KaitaiError, "Kaitai Struct error")
  elif isLe:
    readLe()
  else:
    readBe()
  let foo = io.readU4le()
  result.foo = foo
  let foo = io.readU4be()
  result.foo = foo

proc fromFile*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj_SubMainObj], filename: string): DefaultEndianExprIsBe_Doc_MainObj_SubMainObj =
  DefaultEndianExprIsBe_Doc_MainObj_SubMainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsBe_Doc_MainObj_SubMainObjObj) =
  close(x.io)

### DefaultEndianExprIsBe_Doc_MainObj ###
proc read*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj], io: KaitaiStream, root: DefaultEndianExprIsBe, parent: DefaultEndianExprIsBe_Doc): DefaultEndianExprIsBe_Doc_MainObj =
  result = new(DefaultEndianExprIsBe_Doc_MainObj)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let isLe = false
  result.isLe = isLe
  let isLe = true
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

proc fromFile*(_: typedesc[DefaultEndianExprIsBe_Doc_MainObj], filename: string): DefaultEndianExprIsBe_Doc_MainObj =
  DefaultEndianExprIsBe_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsBe_Doc_MainObjObj) =
  close(x.io)

### DefaultEndianExprIsBe_Doc ###
proc read*(_: typedesc[DefaultEndianExprIsBe_Doc], io: KaitaiStream, root: DefaultEndianExprIsBe, parent: DefaultEndianExprIsBe): DefaultEndianExprIsBe_Doc =
  result = new(DefaultEndianExprIsBe_Doc)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let indicator = io.readBytes(int(2))
  result.indicator = indicator
  let main = DefaultEndianExprIsBe_Doc_MainObj.read(io, result, root)
  result.main = main

proc fromFile*(_: typedesc[DefaultEndianExprIsBe_Doc], filename: string): DefaultEndianExprIsBe_Doc =
  DefaultEndianExprIsBe_Doc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsBe_DocObj) =
  close(x.io)

### DefaultEndianExprIsBe ###
proc read*(_: typedesc[DefaultEndianExprIsBe], io: KaitaiStream, root: DefaultEndianExprIsBe, parent: ref RootObj): DefaultEndianExprIsBe =
  result = new(DefaultEndianExprIsBe)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  docs = newSeq[DefaultEndianExprIsBe_Doc]()
  block:
    var i: int
    while not io.eof:
      docs.add(DefaultEndianExprIsBe_Doc.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprIsBe], filename: string): DefaultEndianExprIsBe =
  DefaultEndianExprIsBe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsBeObj) =
  close(x.io)

