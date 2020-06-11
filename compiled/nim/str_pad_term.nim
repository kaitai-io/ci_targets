import kaitai_struct_nim_runtime
import options

type
  StrPadTerm* = ref object of KaitaiStruct
    `strPad`*: string
    `strTerm`*: string
    `strTermAndPad`*: string
    `strTermInclude`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[StrPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTerm


proc read*(_: typedesc[StrPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTerm =
  template this: untyped = result
  this = new(StrPadTerm)
  let root = if root == nil: cast[StrPadTerm](this) else: cast[StrPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let strPadExpr = encode(this.io.readBytes(int(20)).bytesStripRight(64), "UTF-8")
  this.strPad = strPadExpr
  let strTermExpr = encode(this.io.readBytes(int(20)).bytesTerminate(64, false), "UTF-8")
  this.strTerm = strTermExpr
  let strTermAndPadExpr = encode(this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false), "UTF-8")
  this.strTermAndPad = strTermAndPadExpr
  let strTermIncludeExpr = encode(this.io.readBytes(int(20)).bytesTerminate(64, true), "UTF-8")
  this.strTermInclude = strTermIncludeExpr

proc fromFile*(_: typedesc[StrPadTerm], filename: string): StrPadTerm =
  StrPadTerm.read(newKaitaiFileStream(filename), nil, nil)

