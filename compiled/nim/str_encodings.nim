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
  let lenOf1 = io.readU2le()
  result.lenOf1 = lenOf1
  let str1 = convert(io.readBytes(int(lenOf1)), srcEncoding = "ASCII")
  result.str1 = str1
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

proc fromFile*(_: typedesc[StrEncodings], filename: string): StrEncodings =
  StrEncodings.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrEncodingsObj) =
  close(x.io)

