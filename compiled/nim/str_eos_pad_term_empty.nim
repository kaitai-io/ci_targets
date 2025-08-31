import kaitai_struct_nim_runtime
import options

type
  StrEosPadTermEmpty* = ref object of KaitaiStruct
    `strPad`*: StrEosPadTermEmpty_StrPadType
    `strTerm`*: StrEosPadTermEmpty_StrTermType
    `strTermAndPad`*: StrEosPadTermEmpty_StrTermAndPadType
    `strTermInclude`*: StrEosPadTermEmpty_StrTermIncludeType
    `parent`*: KaitaiStruct
    `rawStrPad`*: seq[byte]
    `rawStrTerm`*: seq[byte]
    `rawStrTermAndPad`*: seq[byte]
    `rawStrTermInclude`*: seq[byte]
  StrEosPadTermEmpty_StrPadType* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: StrEosPadTermEmpty
  StrEosPadTermEmpty_StrTermAndPadType* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: StrEosPadTermEmpty
  StrEosPadTermEmpty_StrTermIncludeType* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: StrEosPadTermEmpty
  StrEosPadTermEmpty_StrTermType* = ref object of KaitaiStruct
    `value`*: string
    `parent`*: StrEosPadTermEmpty

proc read*(_: typedesc[StrEosPadTermEmpty], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEosPadTermEmpty
proc read*(_: typedesc[StrEosPadTermEmpty_StrPadType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEmpty): StrEosPadTermEmpty_StrPadType
proc read*(_: typedesc[StrEosPadTermEmpty_StrTermAndPadType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEmpty): StrEosPadTermEmpty_StrTermAndPadType
proc read*(_: typedesc[StrEosPadTermEmpty_StrTermIncludeType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEmpty): StrEosPadTermEmpty_StrTermIncludeType
proc read*(_: typedesc[StrEosPadTermEmpty_StrTermType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEmpty): StrEosPadTermEmpty_StrTermType


proc read*(_: typedesc[StrEosPadTermEmpty], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEosPadTermEmpty =
  template this: untyped = result
  this = new(StrEosPadTermEmpty)
  let root = if root == nil: cast[StrEosPadTermEmpty](this) else: cast[StrEosPadTermEmpty](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawStrPadExpr = this.io.readBytes(int(20))
  this.rawStrPad = rawStrPadExpr
  let rawStrPadIo = newKaitaiStream(rawStrPadExpr)
  let strPadExpr = StrEosPadTermEmpty_StrPadType.read(rawStrPadIo, this.root, this)
  this.strPad = strPadExpr
  let rawStrTermExpr = this.io.readBytes(int(20))
  this.rawStrTerm = rawStrTermExpr
  let rawStrTermIo = newKaitaiStream(rawStrTermExpr)
  let strTermExpr = StrEosPadTermEmpty_StrTermType.read(rawStrTermIo, this.root, this)
  this.strTerm = strTermExpr
  let rawStrTermAndPadExpr = this.io.readBytes(int(20))
  this.rawStrTermAndPad = rawStrTermAndPadExpr
  let rawStrTermAndPadIo = newKaitaiStream(rawStrTermAndPadExpr)
  let strTermAndPadExpr = StrEosPadTermEmpty_StrTermAndPadType.read(rawStrTermAndPadIo, this.root, this)
  this.strTermAndPad = strTermAndPadExpr
  let rawStrTermIncludeExpr = this.io.readBytes(int(20))
  this.rawStrTermInclude = rawStrTermIncludeExpr
  let rawStrTermIncludeIo = newKaitaiStream(rawStrTermIncludeExpr)
  let strTermIncludeExpr = StrEosPadTermEmpty_StrTermIncludeType.read(rawStrTermIncludeIo, this.root, this)
  this.strTermInclude = strTermIncludeExpr

proc fromFile*(_: typedesc[StrEosPadTermEmpty], filename: string): StrEosPadTermEmpty =
  StrEosPadTermEmpty.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEosPadTermEmpty_StrPadType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEmpty): StrEosPadTermEmpty_StrPadType =
  template this: untyped = result
  this = new(StrEosPadTermEmpty_StrPadType)
  let root = if root == nil: cast[StrEosPadTermEmpty](this) else: cast[StrEosPadTermEmpty](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesFull().bytesStripRight(64), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[StrEosPadTermEmpty_StrPadType], filename: string): StrEosPadTermEmpty_StrPadType =
  StrEosPadTermEmpty_StrPadType.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEosPadTermEmpty_StrTermAndPadType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEmpty): StrEosPadTermEmpty_StrTermAndPadType =
  template this: untyped = result
  this = new(StrEosPadTermEmpty_StrTermAndPadType)
  let root = if root == nil: cast[StrEosPadTermEmpty](this) else: cast[StrEosPadTermEmpty](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesFull().bytesStripRight(43).bytesTerminate(64, false), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[StrEosPadTermEmpty_StrTermAndPadType], filename: string): StrEosPadTermEmpty_StrTermAndPadType =
  StrEosPadTermEmpty_StrTermAndPadType.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEosPadTermEmpty_StrTermIncludeType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEmpty): StrEosPadTermEmpty_StrTermIncludeType =
  template this: untyped = result
  this = new(StrEosPadTermEmpty_StrTermIncludeType)
  let root = if root == nil: cast[StrEosPadTermEmpty](this) else: cast[StrEosPadTermEmpty](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesFull().bytesTerminate(64, true), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[StrEosPadTermEmpty_StrTermIncludeType], filename: string): StrEosPadTermEmpty_StrTermIncludeType =
  StrEosPadTermEmpty_StrTermIncludeType.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEosPadTermEmpty_StrTermType], io: KaitaiStream, root: KaitaiStruct, parent: StrEosPadTermEmpty): StrEosPadTermEmpty_StrTermType =
  template this: untyped = result
  this = new(StrEosPadTermEmpty_StrTermType)
  let root = if root == nil: cast[StrEosPadTermEmpty](this) else: cast[StrEosPadTermEmpty](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = encode(this.io.readBytesFull().bytesTerminate(64, false), "UTF-8")
  this.value = valueExpr

proc fromFile*(_: typedesc[StrEosPadTermEmpty_StrTermType], filename: string): StrEosPadTermEmpty_StrTermType =
  StrEosPadTermEmpty_StrTermType.read(newKaitaiFileStream(filename), nil, nil)

