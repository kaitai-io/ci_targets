# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai

type
  DefaultEndianExprIsLe* = ref object
    docs*: seq[Doc]
    root*: DefaultEndianExprIsLe
    parent*: ref RootObj
  Doc* = ref object
    indicator*: seq[byte]
    main*: MainObj
    root*: DefaultEndianExprIsLe
    parent*: DefaultEndianExprIsLe
  MainObj* = ref object
    someInt*: uint32
    someIntBe*: uint16
    someIntLe*: uint16
    root*: DefaultEndianExprIsLe
    parent*: Doc

proc read*(_: typedesc[MainObj], stream: KaitaiStream, root: DefaultEndianExprIsLe, parent: Doc): owned MainObj =
  result = new(MainObj)
  let root = if root == nil: cast[DefaultEndianExprIsLe](result) else: root
  result.someInt = readU4le(stream)
  result.someIntBe = readU2be(stream)
  result.someIntLe = readU2le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[MainObj], filename: string): owned MainObj =
  var stream = newKaitaiStream(filename)
  MainObj.read(stream, nil, nil)

proc read*(_: typedesc[Doc], stream: KaitaiStream, root: DefaultEndianExprIsLe, parent: DefaultEndianExprIsLe): owned Doc =
  result = new(Doc)
  let root = if root == nil: cast[DefaultEndianExprIsLe](result) else: root
  result.indicator = readBytes(stream, int(2))
  result.main = MainObj.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Doc], filename: string): owned Doc =
  var stream = newKaitaiStream(filename)
  Doc.read(stream, nil, nil)

proc read*(_: typedesc[DefaultEndianExprIsLe], stream: KaitaiStream, root: DefaultEndianExprIsLe, parent: ref RootObj): owned DefaultEndianExprIsLe =
  result = new(DefaultEndianExprIsLe)
  let root = if root == nil: cast[DefaultEndianExprIsLe](result) else: root
  result.docs = newSeq[Doc]()
  while not eof(stream):
    result.docs.add(Doc.read(stream, root, result))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[DefaultEndianExprIsLe], filename: string): owned DefaultEndianExprIsLe =
  var stream = newKaitaiStream(filename)
  DefaultEndianExprIsLe.read(stream, nil, nil)
