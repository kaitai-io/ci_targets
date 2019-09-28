# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import ../../../runtime/nim/kaitai
import options

type
  DefaultEndianExprInherited* = ref object
    docs*: seq[Doc]
    root*: DefaultEndianExprInherited
    parent*: ref RootObj
  Doc* = ref object
    indicator*: seq[byte]
    main*: MainObj
    root*: DefaultEndianExprInherited
    parent*: DefaultEndianExprInherited
  MainObj* = ref object
    insides*: SubObj
    root*: DefaultEndianExprInherited
    parent*: Doc
  SubObj* = ref object
    someInt*: uint32
    more*: SubsubObj
    root*: DefaultEndianExprInherited
    parent*: MainObj
  SubsubObj* = ref object
    someInt1*: uint16
    someInt2*: uint16
    root*: DefaultEndianExprInherited
    parent*: SubObj
    someInst*: Option[uint32]

proc read*(_: typedesc[SubsubObj], stream: KaitaiStream, root: DefaultEndianExprInherited, parent: SubObj): owned SubsubObj =
  result = new(SubsubObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  result.someInt1 = readU2le(stream)
  result.someInt2 = readU2le(stream)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubsubObj], filename: string): owned SubsubObj =
  var stream = newKaitaiStream(filename)
  SubsubObj.read(stream, nil, nil)

proc read*(_: typedesc[SubObj], stream: KaitaiStream, root: DefaultEndianExprInherited, parent: MainObj): owned SubObj =
  result = new(SubObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  result.someInt = readU4le(stream)
  result.more = SubsubObj.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[SubObj], filename: string): owned SubObj =
  var stream = newKaitaiStream(filename)
  SubObj.read(stream, nil, nil)

proc read*(_: typedesc[MainObj], stream: KaitaiStream, root: DefaultEndianExprInherited, parent: Doc): owned MainObj =
  result = new(MainObj)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  result.insides = SubObj.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[MainObj], filename: string): owned MainObj =
  var stream = newKaitaiStream(filename)
  MainObj.read(stream, nil, nil)

proc read*(_: typedesc[Doc], stream: KaitaiStream, root: DefaultEndianExprInherited, parent: DefaultEndianExprInherited): owned Doc =
  result = new(Doc)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  result.indicator = readBytes(stream, int(2))
  result.main = MainObj.read(stream, root, result)
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[Doc], filename: string): owned Doc =
  var stream = newKaitaiStream(filename)
  Doc.read(stream, nil, nil)

proc read*(_: typedesc[DefaultEndianExprInherited], stream: KaitaiStream, root: DefaultEndianExprInherited, parent: ref RootObj): owned DefaultEndianExprInherited =
  result = new(DefaultEndianExprInherited)
  let root = if root == nil: cast[DefaultEndianExprInherited](result) else: root
  result.docs = newSeq[Doc]()
  while not eof(stream):
    result.docs.add(Doc.read(stream, root, result))
  result.root = root
  result.parent = parent

proc fromFile*(_: typedesc[DefaultEndianExprInherited], filename: string): owned DefaultEndianExprInherited =
  var stream = newKaitaiStream(filename)
  DefaultEndianExprInherited.read(stream, nil, nil)
