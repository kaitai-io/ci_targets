import kaitai_struct_nim_runtime
import options

type
  StrPadTermRoundtrip* = ref object of KaitaiStruct
    `strPad`*: string
    `strTerm`*: string
    `strTermAndPad`*: string
    `strTermInclude`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[StrPadTermRoundtrip], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTermRoundtrip


proc read*(_: typedesc[StrPadTermRoundtrip], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTermRoundtrip =
  template this: untyped = result
  this = new(StrPadTermRoundtrip)
  let root = if root == nil: cast[StrPadTermRoundtrip](this) else: cast[StrPadTermRoundtrip](root)
  this.io = io
  this.root = root
  this.parent = parent

  let strPadExpr = encode(this.io.readBytes(int(20)).bytesStripRight(64), "UTF-8")
  this.strPad = strPadExpr
  let strTermExpr = encode(this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false), "UTF-8")
  this.strTerm = strTermExpr
  let strTermAndPadExpr = encode(this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false), "UTF-8")
  this.strTermAndPad = strTermAndPadExpr
  let strTermIncludeExpr = encode(this.io.readBytes(int(20)).bytesStripRight(46).bytesTerminate(64, true), "UTF-8")
  this.strTermInclude = strTermIncludeExpr

proc fromFile*(_: typedesc[StrPadTermRoundtrip], filename: string): StrPadTermRoundtrip =
  StrPadTermRoundtrip.read(newKaitaiFileStream(filename), nil, nil)

