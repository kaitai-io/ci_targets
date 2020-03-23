import kaitai_struct_nim_runtime

type
  DefaultEndianExprIsBedocmainObjsubMainObj* = ref DefaultEndianExprIsBedocmainObjsubMainObjObj
  DefaultEndianExprIsBedocmainObjsubMainObjObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprIsBe
    parent*: ref RootObj
  DefaultEndianExprIsBedocmainObj* = ref DefaultEndianExprIsBedocmainObjObj
  DefaultEndianExprIsBedocmainObjObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprIsBe
    parent*: ref RootObj
  DefaultEndianExprIsBedoc* = ref DefaultEndianExprIsBedocObj
  DefaultEndianExprIsBedocObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprIsBe
    parent*: ref RootObj
  DefaultEndianExprIsBe* = ref DefaultEndianExprIsBeObj
  DefaultEndianExprIsBeObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprIsBe
    parent*: ref RootObj

### DefaultEndianExprIsBedocmainObjsubMainObj ###
proc read*(_: typedesc[DefaultEndianExprIsBedocmainObjsubMainObj], io: KaitaiStream, root: DefaultEndianExprIsBe, parent: DefaultEndianExprIsBedocmainObj): DefaultEndianExprIsBedocmainObjsubMainObj =
  result = new(DefaultEndianExprIsBedocmainObjsubMainObj)
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
  result.foo = result.io.readU4le()
  result.foo = result.io.readU4be()

proc fromFile*(_: typedesc[DefaultEndianExprIsBedocmainObjsubMainObj], filename: string): DefaultEndianExprIsBedocmainObjsubMainObj =
  DefaultEndianExprIsBedocmainObjsubMainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsBedocmainObjsubMainObjObj) =
  close(x.io)

### DefaultEndianExprIsBedocmainObj ###
proc read*(_: typedesc[DefaultEndianExprIsBedocmainObj], io: KaitaiStream, root: DefaultEndianExprIsBe, parent: DefaultEndianExprIsBedoc): DefaultEndianExprIsBedocmainObj =
  result = new(DefaultEndianExprIsBedocmainObj)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.isLe = false
  result.isLe = true

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

proc fromFile*(_: typedesc[DefaultEndianExprIsBedocmainObj], filename: string): DefaultEndianExprIsBedocmainObj =
  DefaultEndianExprIsBedocmainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsBedocmainObjObj) =
  close(x.io)

### DefaultEndianExprIsBedoc ###
proc read*(_: typedesc[DefaultEndianExprIsBedoc], io: KaitaiStream, root: DefaultEndianExprIsBe, parent: DefaultEndianExprIsBe): DefaultEndianExprIsBedoc =
  result = new(DefaultEndianExprIsBedoc)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.indicator = result.io.readBytes(2)
  result.main = MainObj.read(result.io, result, root)

proc fromFile*(_: typedesc[DefaultEndianExprIsBedoc], filename: string): DefaultEndianExprIsBedoc =
  DefaultEndianExprIsBedoc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsBedocObj) =
  close(x.io)

### DefaultEndianExprIsBe ###
proc read*(_: typedesc[DefaultEndianExprIsBe], io: KaitaiStream, root: DefaultEndianExprIsBe, parent: ref RootObj): DefaultEndianExprIsBe =
  result = new(DefaultEndianExprIsBe)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.docs = newSeq[Doc]()
  block:
    var i: int
    while not result.io.eof:
      result.docs.add(Doc.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprIsBe], filename: string): DefaultEndianExprIsBe =
  DefaultEndianExprIsBe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsBeObj) =
  close(x.io)

