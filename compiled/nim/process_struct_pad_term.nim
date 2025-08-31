import kaitai_struct_nim_runtime
import options

type
  ProcessStructPadTerm* = ref object of KaitaiStruct
    `strPad`*: ProcessStructPadTerm_BytesWrapper
    `strTerm`*: ProcessStructPadTerm_BytesWrapper
    `strTermAndPad`*: ProcessStructPadTerm_BytesWrapper
    `strTermInclude`*: ProcessStructPadTerm_BytesWrapper
    `parent`*: KaitaiStruct
    `rawStrPad`*: seq[byte]
    `rawRawStrPad`*: seq[byte]
    `rawStrTerm`*: seq[byte]
    `rawRawStrTerm`*: seq[byte]
    `rawStrTermAndPad`*: seq[byte]
    `rawRawStrTermAndPad`*: seq[byte]
    `rawStrTermInclude`*: seq[byte]
    `rawRawStrTermInclude`*: seq[byte]
  ProcessStructPadTerm_BytesWrapper* = ref object of KaitaiStruct
    `value`*: seq[byte]
    `parent`*: ProcessStructPadTerm

proc read*(_: typedesc[ProcessStructPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessStructPadTerm
proc read*(_: typedesc[ProcessStructPadTerm_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: ProcessStructPadTerm): ProcessStructPadTerm_BytesWrapper


proc read*(_: typedesc[ProcessStructPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessStructPadTerm =
  template this: untyped = result
  this = new(ProcessStructPadTerm)
  let root = if root == nil: cast[ProcessStructPadTerm](this) else: cast[ProcessStructPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawRawStrPadExpr = this.io.readBytes(int(20)).bytesStripRight(64)
  this.rawRawStrPad = rawRawStrPadExpr
  let rawStrPadExpr = this.rawRawStrPad.processXor(21)
  this.rawStrPad = rawStrPadExpr
  let rawStrPadIo = newKaitaiStream(rawStrPadExpr)
  let strPadExpr = ProcessStructPadTerm_BytesWrapper.read(rawStrPadIo, this.root, this)
  this.strPad = strPadExpr
  let rawRawStrTermExpr = this.io.readBytes(int(20)).bytesTerminate(64, false)
  this.rawRawStrTerm = rawRawStrTermExpr
  let rawStrTermExpr = this.rawRawStrTerm.processXor(21)
  this.rawStrTerm = rawStrTermExpr
  let rawStrTermIo = newKaitaiStream(rawStrTermExpr)
  let strTermExpr = ProcessStructPadTerm_BytesWrapper.read(rawStrTermIo, this.root, this)
  this.strTerm = strTermExpr
  let rawRawStrTermAndPadExpr = this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false)
  this.rawRawStrTermAndPad = rawRawStrTermAndPadExpr
  let rawStrTermAndPadExpr = this.rawRawStrTermAndPad.processXor(21)
  this.rawStrTermAndPad = rawStrTermAndPadExpr
  let rawStrTermAndPadIo = newKaitaiStream(rawStrTermAndPadExpr)
  let strTermAndPadExpr = ProcessStructPadTerm_BytesWrapper.read(rawStrTermAndPadIo, this.root, this)
  this.strTermAndPad = strTermAndPadExpr
  let rawRawStrTermIncludeExpr = this.io.readBytes(int(20)).bytesTerminate(64, true)
  this.rawRawStrTermInclude = rawRawStrTermIncludeExpr
  let rawStrTermIncludeExpr = this.rawRawStrTermInclude.processXor(21)
  this.rawStrTermInclude = rawStrTermIncludeExpr
  let rawStrTermIncludeIo = newKaitaiStream(rawStrTermIncludeExpr)
  let strTermIncludeExpr = ProcessStructPadTerm_BytesWrapper.read(rawStrTermIncludeIo, this.root, this)
  this.strTermInclude = strTermIncludeExpr

proc fromFile*(_: typedesc[ProcessStructPadTerm], filename: string): ProcessStructPadTerm =
  ProcessStructPadTerm.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ProcessStructPadTerm_BytesWrapper], io: KaitaiStream, root: KaitaiStruct, parent: ProcessStructPadTerm): ProcessStructPadTerm_BytesWrapper =
  template this: untyped = result
  this = new(ProcessStructPadTerm_BytesWrapper)
  let root = if root == nil: cast[ProcessStructPadTerm](this) else: cast[ProcessStructPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readBytesFull()
  this.value = valueExpr

proc fromFile*(_: typedesc[ProcessStructPadTerm_BytesWrapper], filename: string): ProcessStructPadTerm_BytesWrapper =
  ProcessStructPadTerm_BytesWrapper.read(newKaitaiFileStream(filename), nil, nil)

