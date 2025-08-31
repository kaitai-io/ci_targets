import kaitai_struct_nim_runtime
import options

type
  BytesEosPadTerm* = ref object of KaitaiStruct
    `strPad`*: BytesEosPadTerm_StrPadType
    `strTerm`*: BytesEosPadTerm_StrTermType
    `strTermAndPad`*: BytesEosPadTerm_StrTermAndPadType
    `strTermInclude`*: BytesEosPadTerm_StrTermIncludeType
    `parent`*: KaitaiStruct
    `rawStrPad`*: seq[byte]
    `rawStrTerm`*: seq[byte]
    `rawStrTermAndPad`*: seq[byte]
    `rawStrTermInclude`*: seq[byte]
  BytesEosPadTerm_StrPadType* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: BytesEosPadTerm
  BytesEosPadTerm_StrTermAndPadType* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: BytesEosPadTerm
  BytesEosPadTerm_StrTermIncludeType* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: BytesEosPadTerm
  BytesEosPadTerm_StrTermType* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: BytesEosPadTerm

proc read*(_: typedesc[BytesEosPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesEosPadTerm
proc read*(_: typedesc[BytesEosPadTerm_StrPadType], io: KaitaiStream, root: KaitaiStruct, parent: BytesEosPadTerm): BytesEosPadTerm_StrPadType
proc read*(_: typedesc[BytesEosPadTerm_StrTermAndPadType], io: KaitaiStream, root: KaitaiStruct, parent: BytesEosPadTerm): BytesEosPadTerm_StrTermAndPadType
proc read*(_: typedesc[BytesEosPadTerm_StrTermIncludeType], io: KaitaiStream, root: KaitaiStruct, parent: BytesEosPadTerm): BytesEosPadTerm_StrTermIncludeType
proc read*(_: typedesc[BytesEosPadTerm_StrTermType], io: KaitaiStream, root: KaitaiStruct, parent: BytesEosPadTerm): BytesEosPadTerm_StrTermType


proc read*(_: typedesc[BytesEosPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesEosPadTerm =
  template this: untyped = result
  this = new(BytesEosPadTerm)
  let root = if root == nil: cast[BytesEosPadTerm](this) else: cast[BytesEosPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawStrPadExpr = this.io.readBytes(int(20))
  this.rawStrPad = rawStrPadExpr
  let rawStrPadIo = newKaitaiStream(rawStrPadExpr)
  let strPadExpr = BytesEosPadTerm_StrPadType.read(rawStrPadIo, this.root, this)
  this.strPad = strPadExpr
  let rawStrTermExpr = this.io.readBytes(int(20))
  this.rawStrTerm = rawStrTermExpr
  let rawStrTermIo = newKaitaiStream(rawStrTermExpr)
  let strTermExpr = BytesEosPadTerm_StrTermType.read(rawStrTermIo, this.root, this)
  this.strTerm = strTermExpr
  let rawStrTermAndPadExpr = this.io.readBytes(int(20))
  this.rawStrTermAndPad = rawStrTermAndPadExpr
  let rawStrTermAndPadIo = newKaitaiStream(rawStrTermAndPadExpr)
  let strTermAndPadExpr = BytesEosPadTerm_StrTermAndPadType.read(rawStrTermAndPadIo, this.root, this)
  this.strTermAndPad = strTermAndPadExpr
  let rawStrTermIncludeExpr = this.io.readBytes(int(20))
  this.rawStrTermInclude = rawStrTermIncludeExpr
  let rawStrTermIncludeIo = newKaitaiStream(rawStrTermIncludeExpr)
  let strTermIncludeExpr = BytesEosPadTerm_StrTermIncludeType.read(rawStrTermIncludeIo, this.root, this)
  this.strTermInclude = strTermIncludeExpr

proc fromFile*(_: typedesc[BytesEosPadTerm], filename: string): BytesEosPadTerm =
  BytesEosPadTerm.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BytesEosPadTerm_StrPadType], io: KaitaiStream, root: KaitaiStruct, parent: BytesEosPadTerm): BytesEosPadTerm_StrPadType =
  template this: untyped = result
  this = new(BytesEosPadTerm_StrPadType)
  let root = if root == nil: cast[BytesEosPadTerm](this) else: cast[BytesEosPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull().bytesStripRight(64)
  this.value = valueExpr

proc fromFile*(_: typedesc[BytesEosPadTerm_StrPadType], filename: string): BytesEosPadTerm_StrPadType =
  BytesEosPadTerm_StrPadType.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BytesEosPadTerm_StrTermAndPadType], io: KaitaiStream, root: KaitaiStruct, parent: BytesEosPadTerm): BytesEosPadTerm_StrTermAndPadType =
  template this: untyped = result
  this = new(BytesEosPadTerm_StrTermAndPadType)
  let root = if root == nil: cast[BytesEosPadTerm](this) else: cast[BytesEosPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull().bytesStripRight(43).bytesTerminate(64, false)
  this.value = valueExpr

proc fromFile*(_: typedesc[BytesEosPadTerm_StrTermAndPadType], filename: string): BytesEosPadTerm_StrTermAndPadType =
  BytesEosPadTerm_StrTermAndPadType.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BytesEosPadTerm_StrTermIncludeType], io: KaitaiStream, root: KaitaiStruct, parent: BytesEosPadTerm): BytesEosPadTerm_StrTermIncludeType =
  template this: untyped = result
  this = new(BytesEosPadTerm_StrTermIncludeType)
  let root = if root == nil: cast[BytesEosPadTerm](this) else: cast[BytesEosPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull().bytesTerminate(64, true)
  this.value = valueExpr

proc fromFile*(_: typedesc[BytesEosPadTerm_StrTermIncludeType], filename: string): BytesEosPadTerm_StrTermIncludeType =
  BytesEosPadTerm_StrTermIncludeType.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[BytesEosPadTerm_StrTermType], io: KaitaiStream, root: KaitaiStruct, parent: BytesEosPadTerm): BytesEosPadTerm_StrTermType =
  template this: untyped = result
  this = new(BytesEosPadTerm_StrTermType)
  let root = if root == nil: cast[BytesEosPadTerm](this) else: cast[BytesEosPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull().bytesTerminate(64, false)
  this.value = valueExpr

proc fromFile*(_: typedesc[BytesEosPadTerm_StrTermType], filename: string): BytesEosPadTerm_StrTermType =
  BytesEosPadTerm_StrTermType.read(newKaitaiFileStream(filename), nil, nil)

