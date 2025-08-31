import kaitai_struct_nim_runtime
import options

type
  ProcessBytesPadTerm* = ref object of KaitaiStruct
    `strPad`*: seq[byte]
    `strTerm`*: seq[byte]
    `strTermAndPad`*: seq[byte]
    `strTermInclude`*: seq[byte]
    `parent`*: KaitaiStruct
    `rawStrPad`*: seq[byte]
    `rawStrTerm`*: seq[byte]
    `rawStrTermAndPad`*: seq[byte]
    `rawStrTermInclude`*: seq[byte]

proc read*(_: typedesc[ProcessBytesPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessBytesPadTerm


proc read*(_: typedesc[ProcessBytesPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessBytesPadTerm =
  template this: untyped = result
  this = new(ProcessBytesPadTerm)
  let root = if root == nil: cast[ProcessBytesPadTerm](this) else: cast[ProcessBytesPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawStrPadExpr = this.io.readBytes(int(20)).bytesStripRight(64)
  this.rawStrPad = rawStrPadExpr
  let strPadExpr = this.rawStrPad.processXor(21)
  this.strPad = strPadExpr
  let rawStrTermExpr = this.io.readBytes(int(20)).bytesTerminate(64, false)
  this.rawStrTerm = rawStrTermExpr
  let strTermExpr = this.rawStrTerm.processXor(21)
  this.strTerm = strTermExpr
  let rawStrTermAndPadExpr = this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false)
  this.rawStrTermAndPad = rawStrTermAndPadExpr
  let strTermAndPadExpr = this.rawStrTermAndPad.processXor(21)
  this.strTermAndPad = strTermAndPadExpr
  let rawStrTermIncludeExpr = this.io.readBytes(int(20)).bytesTerminate(64, true)
  this.rawStrTermInclude = rawStrTermIncludeExpr
  let strTermIncludeExpr = this.rawStrTermInclude.processXor(21)
  this.strTermInclude = strTermIncludeExpr

proc fromFile*(_: typedesc[ProcessBytesPadTerm], filename: string): ProcessBytesPadTerm =
  ProcessBytesPadTerm.read(newKaitaiFileStream(filename), nil, nil)

