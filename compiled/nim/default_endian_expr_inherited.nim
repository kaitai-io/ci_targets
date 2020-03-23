import kaitai_struct_nim_runtime

type
  DefaultEndianExprInheriteddocmainObjsubObjsubsubObj* = ref DefaultEndianExprInheriteddocmainObjsubObjsubsubObjObj
  DefaultEndianExprInheriteddocmainObjsubObjsubsubObjObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: ref RootObj
  DefaultEndianExprInheriteddocmainObjsubObj* = ref DefaultEndianExprInheriteddocmainObjsubObjObj
  DefaultEndianExprInheriteddocmainObjsubObjObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: ref RootObj
  DefaultEndianExprInheriteddocmainObj* = ref DefaultEndianExprInheriteddocmainObjObj
  DefaultEndianExprInheriteddocmainObjObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: ref RootObj
  DefaultEndianExprInheriteddoc* = ref DefaultEndianExprInheriteddocObj
  DefaultEndianExprInheriteddocObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: ref RootObj
  DefaultEndianExprInherited* = ref DefaultEndianExprInheritedObj
  DefaultEndianExprInheritedObj* = object
    docs*: seq[Doc]
    io*: KaitaiStream
    root*: DefaultEndianExprInherited
    parent*: ref RootObj

### DefaultEndianExprInheriteddocmainObjsubObjsubsubObj ###
proc read*(_: typedesc[DefaultEndianExprInheriteddocmainObjsubObjsubsubObj], io: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInheriteddocmainObjsubObj): DefaultEndianExprInheriteddocmainObjsubObjsubsubObj =
  result = new(DefaultEndianExprInheriteddocmainObjsubObjsubsubObj)
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
  result.someInt1 = result.io.readU2le()
  result.someInt2 = result.io.readU2le()
  result.someInt1 = result.io.readU2be()
  result.someInt2 = result.io.readU2be()

proc fromFile*(_: typedesc[DefaultEndianExprInheriteddocmainObjsubObjsubsubObj], filename: string): DefaultEndianExprInheriteddocmainObjsubObjsubsubObj =
  DefaultEndianExprInheriteddocmainObjsubObjsubsubObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInheriteddocmainObjsubObjsubsubObjObj) =
  close(x.io)

### DefaultEndianExprInheriteddocmainObjsubObj ###
proc read*(_: typedesc[DefaultEndianExprInheriteddocmainObjsubObj], io: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInheriteddocmainObj): DefaultEndianExprInheriteddocmainObjsubObj =
  result = new(DefaultEndianExprInheriteddocmainObjsubObj)
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
  result.someInt = result.io.readU4le()
  result.more = SubsubObj.read(result.io, result, root, isLe)
  result.someInt = result.io.readU4be()
  result.more = SubsubObj.read(result.io, result, root, isLe)

proc fromFile*(_: typedesc[DefaultEndianExprInheriteddocmainObjsubObj], filename: string): DefaultEndianExprInheriteddocmainObjsubObj =
  DefaultEndianExprInheriteddocmainObjsubObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInheriteddocmainObjsubObjObj) =
  close(x.io)

### DefaultEndianExprInheriteddocmainObj ###
proc read*(_: typedesc[DefaultEndianExprInheriteddocmainObj], io: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInheriteddoc): DefaultEndianExprInheriteddocmainObj =
  result = new(DefaultEndianExprInheriteddocmainObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
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
  result.insides = SubObj.read(result.io, result, root, isLe)
  result.insides = SubObj.read(result.io, result, root, isLe)

proc fromFile*(_: typedesc[DefaultEndianExprInheriteddocmainObj], filename: string): DefaultEndianExprInheriteddocmainObj =
  DefaultEndianExprInheriteddocmainObj.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInheriteddocmainObjObj) =
  close(x.io)

### DefaultEndianExprInheriteddoc ###
proc read*(_: typedesc[DefaultEndianExprInheriteddoc], io: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInherited): DefaultEndianExprInheriteddoc =
  result = new(DefaultEndianExprInheriteddoc)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.indicator = result.io.readBytes(2)
  result.main = MainObj.read(result.io, result, root)

proc fromFile*(_: typedesc[DefaultEndianExprInheriteddoc], filename: string): DefaultEndianExprInheriteddoc =
  DefaultEndianExprInheriteddoc.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInheriteddocObj) =
  close(x.io)

### DefaultEndianExprInherited ###
proc read*(_: typedesc[DefaultEndianExprInherited], io: KaitaiStream, root: DefaultEndianExprInherited, parent: ref RootObj): DefaultEndianExprInherited =
  result = new(DefaultEndianExprInherited)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.docs = newSeq[Doc]()
  block:
    var i: int
    while not result.io.eof:
      result.docs.add(Doc.read(result.io, result, root))
      inc i

proc fromFile*(_: typedesc[DefaultEndianExprInherited], filename: string): DefaultEndianExprInherited =
  DefaultEndianExprInherited.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultEndianExprInheritedObj) =
  close(x.io)

