import kaitai_struct_nim_runtime

type
  DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj* = ref DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObjObj
  DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObjObj* = object
    someInt1*: uint16
    someInt2*: uint16
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: DefaultEndianExprInherited_Doc_MainObj_SubObj
  DefaultEndianExprInherited_Doc_MainObj_SubObj* = ref DefaultEndianExprInherited_Doc_MainObj_SubObjObj
  DefaultEndianExprInherited_Doc_MainObj_SubObjObj* = object
    someInt*: uint32
    more*: DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: DefaultEndianExprInherited_Doc_MainObj
  DefaultEndianExprInherited_Doc_MainObj* = ref DefaultEndianExprInherited_Doc_MainObjObj
  DefaultEndianExprInherited_Doc_MainObjObj* = object
    insides*: DefaultEndianExprInherited_Doc_MainObj_SubObj
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: DefaultEndianExprInherited_Doc
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

### DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj ###
proc read*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj], io: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInherited_Doc_MainObj_SubObj): DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj =
  result = new(DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  if isNone(isLe):
    raise newException(KaitaiError, "Kaitai Struct error")
  elif isLe:
    readLe()
  else:
    readBe()
  let someInt1 = io.readU2le()
  result.someInt1 = someInt1
  let someInt2 = io.readU2le()
  result.someInt2 = someInt2
  let someInt1 = io.readU2be()
  result.someInt1 = someInt1
  let someInt2 = io.readU2be()
  result.someInt2 = someInt2

proc fromFile*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj], filename: string): DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj =
  DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObjObj) =
  close(x.io)

### DefaultEndianExprInherited_Doc_MainObj_SubObj ###
proc read*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj], io: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInherited_Doc_MainObj): DefaultEndianExprInherited_Doc_MainObj_SubObj =
  result = new(DefaultEndianExprInherited_Doc_MainObj_SubObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  if isNone(isLe):
    raise newException(KaitaiError, "Kaitai Struct error")
  elif isLe:
    readLe()
  else:
    readBe()
  let someInt = io.readU4le()
  result.someInt = someInt
  let more = DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj.read(io, result, root, isLe)
  result.more = more
  let someInt = io.readU4be()
  result.someInt = someInt
  let more = DefaultEndianExprInherited_Doc_MainObj_SubObj_SubsubObj.read(io, result, root, isLe)
  result.more = more

proc fromFile*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj_SubObj], filename: string): DefaultEndianExprInherited_Doc_MainObj_SubObj =
  DefaultEndianExprInherited_Doc_MainObj_SubObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInherited_Doc_MainObj_SubObjObj) =
  close(x.io)

### DefaultEndianExprInherited_Doc_MainObj ###
proc read*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj], io: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInherited_Doc): DefaultEndianExprInherited_Doc_MainObj =
  result = new(DefaultEndianExprInherited_Doc_MainObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
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
  let insides = DefaultEndianExprInherited_Doc_MainObj_SubObj.read(io, result, root, isLe)
  result.insides = insides
  let insides = DefaultEndianExprInherited_Doc_MainObj_SubObj.read(io, result, root, isLe)
  result.insides = insides

proc fromFile*(_: typedesc[DefaultEndianExprInherited_Doc_MainObj], filename: string): DefaultEndianExprInherited_Doc_MainObj =
  DefaultEndianExprInherited_Doc_MainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInherited_Doc_MainObjObj) =
  close(x.io)

### DefaultEndianExprInherited_Doc ###
proc read*(_: typedesc[DefaultEndianExprInherited_Doc], io: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInherited): DefaultEndianExprInherited_Doc =
  result = new(DefaultEndianExprInherited_Doc)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let indicator = io.readBytes(int(2))
  result.indicator = indicator
  let main = DefaultEndianExprInherited_Doc_MainObj.read(io, result, root)
  result.main = main

proc fromFile*(_: typedesc[DefaultEndianExprInherited_Doc], filename: string): DefaultEndianExprInherited_Doc =
  DefaultEndianExprInherited_Doc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInherited_DocObj) =
  close(x.io)

### DefaultEndianExprInherited ###
proc read*(_: typedesc[DefaultEndianExprInherited], io: KaitaiStream, root: DefaultEndianExprInherited, parent: ref RootObj): DefaultEndianExprInherited =
  result = new(DefaultEndianExprInherited)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  docs = newSeq[DefaultEndianExprInherited_Doc]()
  block:
    var i: int
    while not io.eof:
      docs.add(DefaultEndianExprInherited_Doc.read(io, result, root))
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprInherited], filename: string): DefaultEndianExprInherited =
  DefaultEndianExprInherited.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInheritedObj) =
  close(x.io)

