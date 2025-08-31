import kaitai_struct_nim_runtime
import options

type
  StructPadTerm* = ref object of KaitaiStruct
    `strPad`*: StructPadTerm_BytesWrapper
    `strTerm`*: StructPadTerm_BytesWrapper
    `strTermAndPad`*: StructPadTerm_BytesWrapper
    `strTermInclude`*: StructPadTerm_BytesWrapper
    `parent`*: KaitaiStruct
    `rawStrPad`*: seq[byte]
    `rawStrTerm`*: seq[byte]
    `rawStrTermAndPad`*: seq[byte]
    `rawStrTermInclude`*: seq[byte]
  StructPadTerm_BytesWrapper* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: StructPadTerm

proc read*(_: typedesc[StructPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StructPadTerm
proc read*(_: typedesc[StructPadTerm_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: StructPadTerm): StructPadTerm_BytesWrapper


proc read*(_: typedesc[StructPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StructPadTerm =
  template this: untyped = result
  this = new(StructPadTerm)
  let root = if root == nil: cast[StructPadTerm](this) else: cast[StructPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawStrPadExpr = this.io.readBytes(int(20)).bytesStripRight(64)
  this.rawStrPad = rawStrPadExpr
  let rawStrPadIo = newKaitaiStream(rawStrPadExpr)
  let strPadExpr = StructPadTerm_BytesWrapper.read(rawStrPadIo, this.root, this)
  this.strPad = strPadExpr
  let rawStrTermExpr = this.io.readBytes(int(20)).bytesTerminate(64, false)
  this.rawStrTerm = rawStrTermExpr
  let rawStrTermIo = newKaitaiStream(rawStrTermExpr)
  let strTermExpr = StructPadTerm_BytesWrapper.read(rawStrTermIo, this.root, this)
  this.strTerm = strTermExpr
  let rawStrTermAndPadExpr = this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false)
  this.rawStrTermAndPad = rawStrTermAndPadExpr
  let rawStrTermAndPadIo = newKaitaiStream(rawStrTermAndPadExpr)
  let strTermAndPadExpr = StructPadTerm_BytesWrapper.read(rawStrTermAndPadIo, this.root, this)
  this.strTermAndPad = strTermAndPadExpr
  let rawStrTermIncludeExpr = this.io.readBytes(int(20)).bytesTerminate(64, true)
  this.rawStrTermInclude = rawStrTermIncludeExpr
  let rawStrTermIncludeIo = newKaitaiStream(rawStrTermIncludeExpr)
  let strTermIncludeExpr = StructPadTerm_BytesWrapper.read(rawStrTermIncludeIo, this.root, this)
  this.strTermInclude = strTermIncludeExpr

proc fromFile*(_: typedesc[StructPadTerm], filename: string): StructPadTerm =
  StructPadTerm.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StructPadTerm_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: StructPadTerm): StructPadTerm_BytesWrapper =
  template this: untyped = result
  this = new(StructPadTerm_BytesWrapper)
  let root = if root == nil: cast[StructPadTerm](this) else: cast[StructPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull()
  this.value = valueExpr

proc fromFile*(_: typedesc[StructPadTerm_BytesWrapper], filename: string): StructPadTerm_BytesWrapper =
  StructPadTerm_BytesWrapper.read(newKaitaiFileStream(filename), nil, nil)

