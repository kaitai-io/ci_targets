import kaitai_struct_nim_runtime
import options

type
  StrEosPadTerm* = ref object of KaitaiStruct
    `strPad`*: StrEosPadTerm_StrPadType
    `strTerm`*: StrEosPadTerm_StrTermType
    `strTermAndPad`*: StrEosPadTerm_StrTermAndPadType
    `strTermInclude`*: StrEosPadTerm_StrTermIncludeType
    `parent`*: KaitaiStruct
    `rawStrPad`*: seq[byte]
    `rawStrTerm`*: seq[byte]
    `rawStrTermAndPad`*: seq[byte]
    `rawStrTermInclude`*: seq[byte]
  StrEosPadTerm_StrPadType* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: StrEosPadTerm
  StrEosPadTerm_StrTermAndPadType* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: StrEosPadTerm
  StrEosPadTerm_StrTermIncludeType* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: StrEosPadTerm
  StrEosPadTerm_StrTermType* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: StrEosPadTerm

proc read*(_: typedesc[StrEosPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEosPadTerm
proc read*(_: typedesc[StrEosPadTerm_StrPadType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTerm): StrEosPadTerm_StrPadType
proc read*(_: typedesc[StrEosPadTerm_StrTermAndPadType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTerm): StrEosPadTerm_StrTermAndPadType
proc read*(_: typedesc[StrEosPadTerm_StrTermIncludeType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTerm): StrEosPadTerm_StrTermIncludeType
proc read*(_: typedesc[StrEosPadTerm_StrTermType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTerm): StrEosPadTerm_StrTermType


proc read*(_: typedesc[StrEosPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEosPadTerm =
  template this: untyped = result
  this = new(StrEosPadTerm)
  let root = if root == nil: cast[StrEosPadTerm](this) else: cast[StrEosPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawStrPadExpr = this.io.readBytes(int(20))
  this.rawStrPad = rawStrPadExpr
  let rawStrPadIo = newKaitaiStream(rawStrPadExpr)
  let strPadExpr = StrEosPadTerm_StrPadType.read(rawStrPadIo, this.root, this)
  this.strPad = strPadExpr
  let rawStrTermExpr = this.io.readBytes(int(20))
  this.rawStrTerm = rawStrTermExpr
  let rawStrTermIo = newKaitaiStream(rawStrTermExpr)
  let strTermExpr = StrEosPadTerm_StrTermType.read(rawStrTermIo, this.root, this)
  this.strTerm = strTermExpr
  let rawStrTermAndPadExpr = this.io.readBytes(int(20))
  this.rawStrTermAndPad = rawStrTermAndPadExpr
  let rawStrTermAndPadIo = newKaitaiStream(rawStrTermAndPadExpr)
  let strTermAndPadExpr = StrEosPadTerm_StrTermAndPadType.read(rawStrTermAndPadIo, this.root, this)
  this.strTermAndPad = strTermAndPadExpr
  let rawStrTermIncludeExpr = this.io.readBytes(int(20))
  this.rawStrTermInclude = rawStrTermIncludeExpr
  let rawStrTermIncludeIo = newKaitaiStream(rawStrTermIncludeExpr)
  let strTermIncludeExpr = StrEosPadTerm_StrTermIncludeType.read(rawStrTermIncludeIo, this.root, this)
  this.strTermInclude = strTermIncludeExpr

proc fromFile*(_: typedesc[StrEosPadTerm], filename: string): StrEosPadTerm =
  StrEosPadTerm.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEosPadTerm_StrPadType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTerm): StrEosPadTerm_StrPadType =
  template this: untyped = result
  this = new(StrEosPadTerm_StrPadType)
  let root = if root == nil: cast[StrEosPadTerm](this) else: cast[StrEosPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesFull().bytesStripRight(64), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[StrEosPadTerm_StrPadType], filename: string): StrEosPadTerm_StrPadType =
  StrEosPadTerm_StrPadType.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEosPadTerm_StrTermAndPadType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTerm): StrEosPadTerm_StrTermAndPadType =
  template this: untyped = result
  this = new(StrEosPadTerm_StrTermAndPadType)
  let root = if root == nil: cast[StrEosPadTerm](this) else: cast[StrEosPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesFull().bytesStripRight(43).bytesTerminate(64, false), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[StrEosPadTerm_StrTermAndPadType], filename: string): StrEosPadTerm_StrTermAndPadType =
  StrEosPadTerm_StrTermAndPadType.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEosPadTerm_StrTermIncludeType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTerm): StrEosPadTerm_StrTermIncludeType =
  template this: untyped = result
  this = new(StrEosPadTerm_StrTermIncludeType)
  let root = if root == nil: cast[StrEosPadTerm](this) else: cast[StrEosPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesFull().bytesTerminate(64, true), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[StrEosPadTerm_StrTermIncludeType], filename: string): StrEosPadTerm_StrTermIncludeType =
  StrEosPadTerm_StrTermIncludeType.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEosPadTerm_StrTermType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTerm): StrEosPadTerm_StrTermType =
  template this: untyped = result
  this = new(StrEosPadTerm_StrTermType)
  let root = if root == nil: cast[StrEosPadTerm](this) else: cast[StrEosPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesFull().bytesTerminate(64, false), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[StrEosPadTerm_StrTermType], filename: string): StrEosPadTerm_StrTermType =
  StrEosPadTerm_StrTermType.read(newKaitaiFileStream(filename), nil, nil)

