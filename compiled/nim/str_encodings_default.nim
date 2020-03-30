import kaitai_struct_nim_runtime
import options
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

## StrEncodingsDefault_Subtype
proc read*(_: typedesc[StrEncodingsDefault_Subtype], io: KaitaiStream, root: StrEncodingsDefault, parent: StrEncodingsDefault): StrEncodingsDefault_Subtype =
  let this = new(StrEncodingsDefault_Subtype)
  let root = if root == nil: cast[StrEncodingsDefault](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.lenOf2 = this.io.readU2le()
  this.str2 = convert(this.io.readBytes(int(this.lenOf2)), srcEncoding = "UTF-8")
  this.lenOf3 = this.io.readU2le()
  this.str3 = convert(this.io.readBytes(int(this.lenOf3)), srcEncoding = "SJIS")
  this.lenOf4 = this.io.readU2le()
  this.str4 = convert(this.io.readBytes(int(this.lenOf4)), srcEncoding = "CP437")
  result = this

proc fromFile*(_: typedesc[StrEncodingsDefault_Subtype], filename: string): StrEncodingsDefault_Subtype =
  StrEncodingsDefault_Subtype.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrEncodingsDefault_SubtypeObj) =
  close(x.io)

## StrEncodingsDefault
proc read*(_: typedesc[StrEncodingsDefault], io: KaitaiStream, root: StrEncodingsDefault, parent: ref RootObj): StrEncodingsDefault =
  let this = new(StrEncodingsDefault)
  let root = if root == nil: cast[StrEncodingsDefault](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.lenOf1 = this.io.readU2le()
  this.str1 = convert(this.io.readBytes(int(this.lenOf1)), srcEncoding = "UTF-8")
  this.rest = StrEncodingsDefault_Subtype.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[StrEncodingsDefault], filename: string): StrEncodingsDefault =
  StrEncodingsDefault.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var StrEncodingsDefaultObj) =
  close(x.io)

