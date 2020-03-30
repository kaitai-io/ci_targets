import kaitai_struct_nim_runtime
import options
import encodings

type
  StrPadTermEmpty* = ref StrPadTermEmptyObj
  StrPadTermEmptyObj* = object
    strPad*: string
    strTerm*: string
    strTermAndPad*: string
    strTermInclude*: string
    io*: KaitaiStream
    root*: StrPadTermEmpty
    parent*: ref RootObj

### StrPadTermEmpty ###
proc read*(_: typedesc[StrPadTermEmpty], io: KaitaiStream, root: StrPadTermEmpty, parent: ref RootObj): StrPadTermEmpty =
  let this = new(StrPadTermEmpty)
  let root = if root == nil: cast[StrPadTermEmpty](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let strPad = convert(this.io.readBytes(int(20)).bytesStripRight(64), srcEncoding = "UTF-8")
  this.strPad = strPad
  let strTerm = convert(this.io.readBytes(int(20)).bytesTerminate(64, false), srcEncoding = "UTF-8")
  this.strTerm = strTerm
  let strTermAndPad = convert(this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false), srcEncoding = "UTF-8")
  this.strTermAndPad = strTermAndPad
  let strTermInclude = convert(this.io.readBytes(int(20)).bytesTerminate(64, true), srcEncoding = "UTF-8")
  this.strTermInclude = strTermInclude
  result = this

proc fromFile*(_: typedesc[StrPadTermEmpty], filename: string): StrPadTermEmpty =
  StrPadTermEmpty.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrPadTermEmptyObj) =
  close(x.io)

