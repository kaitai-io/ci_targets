import kaitai_struct_nim_runtime
import encodings

type
  StrEncodingsDefaultsubtype* = ref StrEncodingsDefaultsubtypeObj
  StrEncodingsDefaultsubtypeObj* = object
    lenOf1*: uint16
    str1*: string
    rest*: Subtype
    io*: KaitaiStream
    root*: StrEncodingsDefault
    parent*: ref RootObj
  StrEncodingsDefault* = ref StrEncodingsDefaultObj
  StrEncodingsDefaultObj* = object
    lenOf1*: uint16
    str1*: string
    rest*: Subtype
    io*: KaitaiStream
    root*: StrEncodingsDefault
    parent*: ref RootObj

### StrEncodingsDefaultsubtype ###
proc read*(_: typedesc[StrEncodingsDefaultsubtype], io: KaitaiStream, root: StrEncodingsDefault, parent: StrEncodingsDefault): StrEncodingsDefaultsubtype =
  result = new(StrEncodingsDefaultsubtype)
  let root = if root == nil: cast[StrEncodingsDefault](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.lenOf2 = result.io.readU2le()
  result.str2 = convert(result.io.readBytes(lenOf2), srcEncoding = "UTF-8")
  result.lenOf3 = result.io.readU2le()
  result.str3 = convert(result.io.readBytes(lenOf3), srcEncoding = "SJIS")
  result.lenOf4 = result.io.readU2le()
  result.str4 = convert(result.io.readBytes(lenOf4), srcEncoding = "CP437")

proc fromFile*(_: typedesc[StrEncodingsDefaultsubtype], filename: string): StrEncodingsDefaultsubtype =
  StrEncodingsDefaultsubtype.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrEncodingsDefaultsubtypeObj) =
  close(x.io)

### StrEncodingsDefault ###
proc read*(_: typedesc[StrEncodingsDefault], io: KaitaiStream, root: StrEncodingsDefault, parent: ref RootObj): StrEncodingsDefault =
  result = new(StrEncodingsDefault)
  let root = if root == nil: cast[StrEncodingsDefault](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.lenOf1 = result.io.readU2le()
  result.str1 = convert(result.io.readBytes(lenOf1), srcEncoding = "UTF-8")
  result.rest = Subtype.read(result.io, result, root)

proc fromFile*(_: typedesc[StrEncodingsDefault], filename: string): StrEncodingsDefault =
  StrEncodingsDefault.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrEncodingsDefaultObj) =
  close(x.io)

