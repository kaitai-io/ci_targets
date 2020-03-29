import kaitai_struct_nim_runtime
import encodings

type
  StrEncodingsDefault_Subtype* = ref StrEncodingsDefault_SubtypeObj
  StrEncodingsDefault_SubtypeObj* = object
    lenOf2*: uint16
    str2*: string
    lenOf3*: uint16
    str3*: string
    lenOf4*: uint16
    str4*: string
    io*: KaitaiStream
    root*: StrEncodingsDefault
    parent*: StrEncodingsDefault
  StrEncodingsDefault* = ref StrEncodingsDefaultObj
  StrEncodingsDefaultObj* = object
    lenOf1*: uint16
    str1*: string
    rest*: StrEncodingsDefault_Subtype
    io*: KaitaiStream
    root*: StrEncodingsDefault
    parent*: ref RootObj

### StrEncodingsDefault_Subtype ###
proc read*(_: typedesc[StrEncodingsDefault_Subtype], io: KaitaiStream, root: StrEncodingsDefault, parent: StrEncodingsDefault): StrEncodingsDefault_Subtype =
  result = new(StrEncodingsDefault_Subtype)
  let root = if root == nil: cast[StrEncodingsDefault](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let lenOf2 = io.readU2le()
  result.lenOf2 = lenOf2
  let str2 = convert(io.readBytes(int(lenOf2)), srcEncoding = "UTF-8")
  result.str2 = str2
  let lenOf3 = io.readU2le()
  result.lenOf3 = lenOf3
  let str3 = convert(io.readBytes(int(lenOf3)), srcEncoding = "SJIS")
  result.str3 = str3
  let lenOf4 = io.readU2le()
  result.lenOf4 = lenOf4
  let str4 = convert(io.readBytes(int(lenOf4)), srcEncoding = "CP437")
  result.str4 = str4

proc fromFile*(_: typedesc[StrEncodingsDefault_Subtype], filename: string): StrEncodingsDefault_Subtype =
  StrEncodingsDefault_Subtype.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrEncodingsDefault_SubtypeObj) =
  close(x.io)

### StrEncodingsDefault ###
proc read*(_: typedesc[StrEncodingsDefault], io: KaitaiStream, root: StrEncodingsDefault, parent: ref RootObj): StrEncodingsDefault =
  result = new(StrEncodingsDefault)
  let root = if root == nil: cast[StrEncodingsDefault](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let lenOf1 = io.readU2le()
  result.lenOf1 = lenOf1
  let str1 = convert(io.readBytes(int(lenOf1)), srcEncoding = "UTF-8")
  result.str1 = str1
  let rest = StrEncodingsDefault_Subtype.read(io, result, root)
  result.rest = rest

proc fromFile*(_: typedesc[StrEncodingsDefault], filename: string): StrEncodingsDefault =
  StrEncodingsDefault.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrEncodingsDefaultObj) =
  close(x.io)

