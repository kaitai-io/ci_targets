import kaitai_struct_nim_runtime
import options

type
  StrEncodingsDefault* = ref object of KaitaiStruct
    lenOf1*: uint16
    str1*: string
    rest*: StrEncodingsDefault_Subtype
    parent*: KaitaiStruct
  StrEncodingsDefault_Subtype* = ref object of KaitaiStruct
    lenOf2*: uint16
    str2*: string
    lenOf3*: uint16
    str3*: string
    lenOf4*: uint16
    str4*: string
    parent*: StrEncodingsDefault

proc read*(_: typedesc[StrEncodingsDefault], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEncodingsDefault
proc read*(_: typedesc[StrEncodingsDefault_Subtype], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsDefault): StrEncodingsDefault_Subtype


proc read*(_: typedesc[StrEncodingsDefault], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): StrEncodingsDefault =
  template this: untyped = result
  this = new(StrEncodingsDefault)
  let root = if root == nil: cast[StrEncodingsDefault](this) else: cast[StrEncodingsDefault](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenOf1Expr = this.io.readU2le()
  this.lenOf1 = lenOf1Expr
  let str1Expr = encode(this.io.readBytes(int(this.lenOf1)), "UTF-8")
  this.str1 = str1Expr
  let restExpr = StrEncodingsDefault_Subtype.read(this.io, this.root, this)
  this.rest = restExpr

proc fromFile*(_: typedesc[StrEncodingsDefault], filename: string): StrEncodingsDefault =
  StrEncodingsDefault.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[StrEncodingsDefault_Subtype], io: KaitaiStream, root: KaitaiStruct, parent: StrEncodingsDefault): StrEncodingsDefault_Subtype =
  template this: untyped = result
  this = new(StrEncodingsDefault_Subtype)
  let root = if root == nil: cast[StrEncodingsDefault](this) else: cast[StrEncodingsDefault](root)
  this.io = io
  this.root = root
  this.parent = parent

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

proc fromFile*(_: typedesc[StrEncodingsDefault_Subtype], filename: string): StrEncodingsDefault_Subtype =
  StrEncodingsDefault_Subtype.read(newKaitaiFileStream(filename), nil, nil)

