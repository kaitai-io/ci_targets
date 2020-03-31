import kaitai_struct_nim_runtime
import options
import encodings

type
  StrPadTermEmpty* = ref object of KaitaiStruct
    strPad*: string
    strTerm*: string
    strTermAndPad*: string
    strTermInclude*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[StrPadTermEmpty], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrPadTermEmpty =
  template this: untyped = result
  this = new(StrPadTermEmpty)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.strPad = convert(this.io.readBytes(int(20)).bytesStripRight(64), srcEncoding = "UTF-8")

  ##[
  ]##
  this.strTerm = convert(this.io.readBytes(int(20)).bytesTerminate(64, false), srcEncoding = "UTF-8")

  ##[
  ]##
  this.strTermAndPad = convert(this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false), srcEncoding = "UTF-8")

  ##[
  ]##
  this.strTermInclude = convert(this.io.readBytes(int(20)).bytesTerminate(64, true), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[StrPadTermEmpty], filename: string): StrPadTermEmpty =
  StrPadTermEmpty.read(newKaitaiFileStream(filename), nil, nil)

