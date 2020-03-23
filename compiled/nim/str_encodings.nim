import kaitai_struct_nim_runtime
import encodings

type
  StrEncodings* = ref StrEncodingsObj
  StrEncodingsObj* = object
    lenOf1*: uint16
    str1*: string
    lenOf2*: uint16
    str2*: string
    lenOf3*: uint16
    str3*: string
    lenOf4*: uint16
    str4*: string
    io*: KaitaiStream
    root*: StrEncodings
    parent*: ref RootObj

### StrEncodings ###
proc read*(_: typedesc[StrEncodings], io: KaitaiStream, root: StrEncodings, parent: ref RootObj): StrEncodings =
  result = new(StrEncodings)
  let root = if root == nil: cast[StrEncodings](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.lenOf1 = result.io.readU2le()
  result.str1 = convert(result.io.readBytes(lenOf1), srcEncoding = "ASCII")
  result.lenOf2 = result.io.readU2le()
  result.str2 = convert(result.io.readBytes(lenOf2), srcEncoding = "UTF-8")
  result.lenOf3 = result.io.readU2le()
  result.str3 = convert(result.io.readBytes(lenOf3), srcEncoding = "SJIS")
  result.lenOf4 = result.io.readU2le()
  result.str4 = convert(result.io.readBytes(lenOf4), srcEncoding = "CP437")

proc fromFile*(_: typedesc[StrEncodings], filename: string): StrEncodings =
  StrEncodings.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrEncodingsObj) =
  close(x.io)

