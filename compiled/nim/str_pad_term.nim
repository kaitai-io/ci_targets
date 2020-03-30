import kaitai_struct_nim_runtime
import options
import encodings

type
  StrPadTerm* = ref StrPadTermObj
  StrPadTermObj* = object
    strPad*: string
    strTerm*: string
    strTermAndPad*: string
    strTermInclude*: string
    io*: KaitaiStream
    root*: StrPadTerm
    parent*: ref RootObj

## StrPadTerm
proc read*(_: typedesc[StrPadTerm], io: KaitaiStream, root: StrPadTerm, parent: ref RootObj): StrPadTerm =
  let this = new(StrPadTerm)
  let root = if root == nil: cast[StrPadTerm](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.strPad = convert(this.io.readBytes(int(20)).bytesStripRight(64), srcEncoding = "UTF-8")
  this.strTerm = convert(this.io.readBytes(int(20)).bytesTerminate(64, false), srcEncoding = "UTF-8")
  this.strTermAndPad = convert(this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false), srcEncoding = "UTF-8")
  this.strTermInclude = convert(this.io.readBytes(int(20)).bytesTerminate(64, true), srcEncoding = "UTF-8")
  result = this

proc fromFile*(_: typedesc[StrPadTerm], filename: string): StrPadTerm =
  StrPadTerm.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrPadTermObj) =
  close(x.io)

