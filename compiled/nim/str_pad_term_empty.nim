import kaitai_struct_nim_runtime
import options

type
  StrPadTermEmpty* = ref object of KaitaiStruct
    `strPad`*: string
    `strTerm`*: string
    `strTermAndPad`*: string
    `strTermInclude`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[StrPadTermEmpty], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTermEmpty


proc read*(_: typedesc[StrPadTermEmpty], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTermEmpty =
  template this: untyped = result
  this = new(StrPadTermEmpty)
  let root = if root == nil: cast[StrPadTermEmpty](this) else: cast[StrPadTermEmpty](root)
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

proc fromFile*(_: typedesc[StrPadTermEmpty], filename: string): StrPadTermEmpty =
  StrPadTermEmpty.read(newKaitaiFileStream(filename), nil, nil)

