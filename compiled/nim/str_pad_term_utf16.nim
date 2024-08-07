import kaitai_struct_nim_runtime
import options

type
  StrPadTermUtf16* = ref object of KaitaiStruct
    `strTerm`*: string
    `strTermInclude`*: string
    `strTermAndPad`*: string
    `parent`*: KaitaiStruct

proc read*(_: typedesc[StrPadTermUtf16], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTermUtf16


proc read*(_: typedesc[StrPadTermUtf16], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTermUtf16 =
  template this: untyped = result
  this = new(StrPadTermUtf16)
  let root = if root == nil: cast[StrPadTermUtf16](this) else: cast[StrPadTermUtf16](root)
  this.io = io
  this.root = root
  this.parent = parent

  let strTermExpr = encode(this.io.readBytes(int(10)).bytesTerminateMulti(@[0'u8, 0'u8], false), "UTF-16LE")
  this.strTerm = strTermExpr
  let strTermIncludeExpr = encode(this.io.readBytes(int(10)).bytesTerminateMulti(@[0'u8, 0'u8], true), "UTF-16LE")
  this.strTermInclude = strTermIncludeExpr
  let strTermAndPadExpr = encode(this.io.readBytes(int(9)).bytesStripRight(43).bytesTerminateMulti(@[0'u8, 0'u8], false), "UTF-16LE")
  this.strTermAndPad = strTermAndPadExpr

proc fromFile*(_: typedesc[StrPadTermUtf16], filename: string): StrPadTermUtf16 =
  StrPadTermUtf16.read(newKaitaiFileStream(filename), nil, nil)

