import kaitai_struct_nim_runtime

type
  DefaultEndianExprIsLedocmainObj* = ref DefaultEndianExprIsLedocmainObjObj
  DefaultEndianExprIsLedocmainObjObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprIsLe
    parent*: ref RootObj
  DefaultEndianExprIsLedoc* = ref DefaultEndianExprIsLedocObj
  DefaultEndianExprIsLedocObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprIsLe
    parent*: ref RootObj
  DefaultEndianExprIsLe* = ref DefaultEndianExprIsLeObj
  DefaultEndianExprIsLeObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprIsLe
    parent*: ref RootObj

### DefaultEndianExprIsLedocmainObj ###
proc read*(_: typedesc[DefaultEndianExprIsLedocmainObj], io: KaitaiStream, root: DefaultEndianExprIsLe, parent: DefaultEndianExprIsLedoc): DefaultEndianExprIsLedocmainObj =
  result = new(DefaultEndianExprIsLedocmainObj)
  let root = if root == nil: cast[DefaultEndianExprIsLe](result) else: root
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

proc fromFile*(_: typedesc[DefaultEndianExprIsLedocmainObj], filename: string): DefaultEndianExprIsLedocmainObj =
  DefaultEndianExprIsLedocmainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsLedocmainObjObj) =
  close(x.io)

### DefaultEndianExprIsLedoc ###
proc read*(_: typedesc[DefaultEndianExprIsLedoc], io: KaitaiStream, root: DefaultEndianExprIsLe, parent: DefaultEndianExprIsLe): DefaultEndianExprIsLedoc =
  result = new(DefaultEndianExprIsLedoc)
  let root = if root == nil: cast[DefaultEndianExprIsLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.indicator = result.io.readBytes(2)
  result.main = MainObj.read(result.io, result, root)

proc fromFile*(_: typedesc[DefaultEndianExprIsLedoc], filename: string): DefaultEndianExprIsLedoc =
  DefaultEndianExprIsLedoc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsLedocObj) =
  close(x.io)

### DefaultEndianExprIsLe ###
proc read*(_: typedesc[DefaultEndianExprIsLe], io: KaitaiStream, root: DefaultEndianExprIsLe, parent: ref RootObj): DefaultEndianExprIsLe =
  result = new(DefaultEndianExprIsLe)
  let root = if root == nil: cast[DefaultEndianExprIsLe](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.docs = newSeq[Doc]()
  block:
    var i: int
    while not result.io.eof:
      result.docs.add(Doc.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprIsLe], filename: string): DefaultEndianExprIsLe =
  DefaultEndianExprIsLe.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprIsLeObj) =
  close(x.io)

