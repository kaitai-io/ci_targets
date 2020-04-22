import kaitai_struct_nim_runtime
import options

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

  let lenOf1Expr = this.io.readU2le()
  this.lenOf1 = lenOf1Expr
  let str1Expr = encode(this.io.readBytes(int(this.lenOf1)), "ASCII")
  this.str1 = str1Expr
  let lenOf2Expr = this.io.readU2le()
  this.lenOf2 = lenOf2Expr
  let str2Expr = encode(this.io.readBytes(int(this.lenOf2)), "UTF-8")
  this.str2 = str2Expr
  let lenOf3Expr = this.io.readU2le()
  this.lenOf3 = lenOf3Expr
  let str3Expr = encode(this.io.readBytes(int(this.lenOf3)), "SJIS")
  this.str3 = str3Expr
  let lenOf4Expr = this.io.readU2le()
  this.lenOf4 = lenOf4Expr
  let str4Expr = encode(this.io.readBytes(int(this.lenOf4)), "CP437")
  this.str4 = str4Expr

proc fromFile*(_: typedesc[StrEncodings], filename: string): StrEncodings =
  StrEncodings.read(newKaitaiFileStream(filename), nil, nil)

