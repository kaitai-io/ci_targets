import kaitai_struct_nim_runtime
import options

type
  StrPadTermZeroSize* = ref object of KaitaiStruct
    `strPad`*: string
    `strTerm`*: string
    `strTermAndPad`*: string
    `strTermInclude`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[StrPadTermZeroSize], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTermZeroSize


proc read*(_: typedesc[StrPadTermZeroSize], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTermZeroSize =
  template this: untyped = result
  this = new(StrPadTermZeroSize)
  let root = if root == nil: cast[StrPadTermZeroSize](this) else: cast[StrPadTermZeroSize](root)
  this.io = io
  this.root = root
  this.parent = parent

  let strPadExpr = encode(this.io.readBytes(int(0)).bytesStripRight(64), "UTF-8")
  this.strPad = strPadExpr
  let strTermExpr = encode(this.io.readBytes(int(0)).bytesTerminate(64, false), "UTF-8")
  this.strTerm = strTermExpr
  let strTermAndPadExpr = encode(this.io.readBytes(int(0)).bytesStripRight(43).bytesTerminate(64, false), "UTF-8")
  this.strTermAndPad = strTermAndPadExpr
  let strTermIncludeExpr = encode(this.io.readBytes(int(0)).bytesTerminate(64, true), "UTF-8")
  this.strTermInclude = strTermIncludeExpr

proc fromFile*(_: typedesc[StrPadTermZeroSize], filename: string): StrPadTermZeroSize =
  StrPadTermZeroSize.read(newKaitaiFileStream(filename), nil, nil)

