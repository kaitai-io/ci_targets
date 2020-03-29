import kaitai_struct_nim_runtime
import encodings

type
  StrCombine* = ref StrCombineObj
  StrCombineObj* = object
    strTerm*: string
    strLimit*: string
    strEos*: string
    io*: KaitaiStream
    root*: StrCombine
    parent*: ref RootObj

### StrCombine ###
proc read*(_: typedesc[StrCombine], io: KaitaiStream, root: StrCombine, parent: ref RootObj): StrCombine =
  result = new(StrCombine)
  let root = if root == nil: cast[StrCombine](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let strTerm = convert(io.readBytesTerm(124, false, true, true), srcEncoding = "ASCII")
  result.strTerm = strTerm
  let strLimit = convert(io.readBytes(int(4)), srcEncoding = "ASCII")
  result.strLimit = strLimit
  let strEos = convert(io.readBytesFull(), srcEncoding = "ASCII")
  result.strEos = strEos

proc fromFile*(_: typedesc[StrCombine], filename: string): StrCombine =
  StrCombine.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrCombineObj) =
  close(x.io)

