import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  StrEncodings* = ref object of KaitaiStruct
    lenOf1*: uint16
    str1*: string
    lenOf2*: uint16
    str2*: string
    lenOf3*: uint16
    str3*: string
    lenOf4*: uint16
    str4*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[StrEncodings], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEncodings


proc read*(_: typedesc[StrEncodings], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEncodings =
  template this: untyped = result
  this = new(StrEncodings)
  let root = if root == nil: cast[StrEncodings](this) else: cast[StrEncodings](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.lenOf1 = this.io.readU2le()
  this.str1 = encode(this.io.readBytes(int(this.lenOf1)), "ASCII")
  this.lenOf2 = this.io.readU2le()
  this.str2 = encode(this.io.readBytes(int(this.lenOf2)), "UTF-8")
  this.lenOf3 = this.io.readU2le()
  this.str3 = encode(this.io.readBytes(int(this.lenOf3)), "SJIS")
  this.lenOf4 = this.io.readU2le()
  this.str4 = encode(this.io.readBytes(int(this.lenOf4)), "CP437")

proc fromFile*(_: typedesc[StrEncodings], filename: string): StrEncodings =
  StrEncodings.read(newKaitaiFileStream(filename), nil, nil)

