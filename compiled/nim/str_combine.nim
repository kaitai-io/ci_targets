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
  result.strTerm = convert(result.io.readBytesTerm(124, false, true, true), srcEncoding = "ASCII")
  result.strLimit = convert(result.io.readBytes(4), srcEncoding = "ASCII")
  result.strEos = convert(result.io.readBytesFull(), srcEncoding = "ASCII")

proc fromFile*(_: typedesc[StrCombine], filename: string): StrCombine =
  StrCombine.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrCombineObj) =
  close(x.io)

