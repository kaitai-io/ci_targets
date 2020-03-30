import kaitai_struct_nim_runtime
import options
import encodings

type
  ParamsCallExtraParens_MyStr1* = ref ParamsCallExtraParens_MyStr1Obj
  ParamsCallExtraParens_MyStr1Obj* = object
    body*: string
    len*: uint32
    io*: KaitaiStream
    root*: ParamsCallExtraParens
    parent*: ParamsCallExtraParens
  ParamsCallExtraParens* = ref ParamsCallExtraParensObj
  ParamsCallExtraParensObj* = object
    buf1*: ParamsCallExtraParens_MyStr1
    io*: KaitaiStream
    root*: ParamsCallExtraParens
    parent*: ref RootObj

## ParamsCallExtraParens_MyStr1
proc read*(_: typedesc[ParamsCallExtraParens_MyStr1], io: KaitaiStream, root: ParamsCallExtraParens, parent: ParamsCallExtraParens): ParamsCallExtraParens_MyStr1 =
  let this = new(ParamsCallExtraParens_MyStr1)
  let root = if root == nil: cast[ParamsCallExtraParens](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.body = convert(this.io.readBytes(int(this.len)), srcEncoding = "UTF-8")
  result = this

proc fromFile*(_: typedesc[ParamsCallExtraParens_MyStr1], filename: string): ParamsCallExtraParens_MyStr1 =
  ParamsCallExtraParens_MyStr1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallExtraParens_MyStr1Obj) =
  close(x.io)

## ParamsCallExtraParens
proc read*(_: typedesc[ParamsCallExtraParens], io: KaitaiStream, root: ParamsCallExtraParens, parent: ref RootObj): ParamsCallExtraParens =
  let this = new(ParamsCallExtraParens)
  let root = if root == nil: cast[ParamsCallExtraParens](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.buf1 = ParamsCallExtraParens_MyStr1.read(this.io, this.root, this, 5)
  result = this

proc fromFile*(_: typedesc[ParamsCallExtraParens], filename: string): ParamsCallExtraParens =
  ParamsCallExtraParens.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallExtraParensObj) =
  close(x.io)

