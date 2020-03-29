import kaitai_struct_nim_runtime
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

### StrPadTerm ###
proc read*(_: typedesc[StrPadTerm], io: KaitaiStream, root: StrPadTerm, parent: ref RootObj): StrPadTerm =
  result = new(StrPadTerm)
  let root = if root == nil: cast[StrPadTerm](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let strPad = convert(io.readBytes(int(20)).bytesStripRight(64), srcEncoding = "UTF-8")
  result.strPad = strPad
  let strTerm = convert(io.readBytes(int(20)).bytesTerminate(64, false), srcEncoding = "UTF-8")
  result.strTerm = strTerm
  let strTermAndPad = convert(io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false), srcEncoding = "UTF-8")
  result.strTermAndPad = strTermAndPad
  let strTermInclude = convert(io.readBytes(int(20)).bytesTerminate(64, true), srcEncoding = "UTF-8")
  result.strTermInclude = strTermInclude

proc fromFile*(_: typedesc[StrPadTerm], filename: string): StrPadTerm =
  StrPadTerm.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrPadTermObj) =
  close(x.io)

