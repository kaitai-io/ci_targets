# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  DefaultEndianExprIsBe* = ref object
    docs*: seq[Doc]
    root*: DefaultEndianExprIsBe
    parent*: ref RootObj
  Doc* = ref object
    indicator*: seq[byte]
    main*: MainObj
    root*: DefaultEndianExprIsBe
    parent*: DefaultEndianExprIsBe
  MainObj* = ref object
    someInt*: uint32
    someIntBe*: uint16
    someIntLe*: uint16
    root*: DefaultEndianExprIsBe
    parent*: Doc
    instInt*: Option[uint32]
    instSub*: Option[SubMainObj]
  SubMainObj* = ref object
    foo*: uint32
    root*: DefaultEndianExprIsBe
    parent*: MainObj

proc read*(_: typedesc[SubMainObj], stream: KaitaiStream, root: DefaultEndianExprIsBe, parent: MainObj): owned SubMainObj =
  result = new(SubMainObj)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  result.foo = readU4le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubMainObj], filename: string): owned SubMainObj =
  var stream = newKaitaiStream(filename)
  SubMainObj.read(stream, nil, nil)

proc read*(_: typedesc[MainObj], stream: KaitaiStream, root: DefaultEndianExprIsBe, parent: Doc): owned MainObj =
  result = new(MainObj)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  result.someInt = readU4le(stream)
  result.someIntBe = readU2be(stream)
  result.someIntLe = readU2le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[MainObj], filename: string): owned MainObj =
  var stream = newKaitaiStream(filename)
  MainObj.read(stream, nil, nil)

proc read*(_: typedesc[Doc], stream: KaitaiStream, root: DefaultEndianExprIsBe, parent: DefaultEndianExprIsBe): owned Doc =
  result = new(Doc)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  result.indicator = readBytes(stream, int(2))
  result.main = MainObj.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Doc], filename: string): owned Doc =
  var stream = newKaitaiStream(filename)
  Doc.read(stream, nil, nil)

proc read*(_: typedesc[DefaultEndianExprIsBe], stream: KaitaiStream, root: DefaultEndianExprIsBe, parent: ref RootObj): owned DefaultEndianExprIsBe =
  result = new(DefaultEndianExprIsBe)
  let root = if root == nil: cast[DefaultEndianExprIsBe](result) else: root
  result.docs = newSeq[Doc]()
  while not eof(stream):
    result.docs.add(Doc.read(stream, root, result))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[DefaultEndianExprIsBe], filename: string): owned DefaultEndianExprIsBe =
  var stream = newKaitaiStream(filename)
  DefaultEndianExprIsBe.read(stream, nil, nil)
