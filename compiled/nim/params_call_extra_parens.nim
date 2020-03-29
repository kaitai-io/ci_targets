import kaitai_struct_nim_runtime
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

### ParamsCallExtraParens_MyStr1 ###
proc read*(_: typedesc[ParamsCallExtraParens_MyStr1], io: KaitaiStream, root: ParamsCallExtraParens, parent: ParamsCallExtraParens): ParamsCallExtraParens_MyStr1 =
  result = new(ParamsCallExtraParens_MyStr1)
  let root = if root == nil: cast[ParamsCallExtraParens](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let body = convert(io.readBytes(int(len)), srcEncoding = "UTF-8")
  result.body = body

proc fromFile*(_: typedesc[ParamsCallExtraParens_MyStr1], filename: string): ParamsCallExtraParens_MyStr1 =
  ParamsCallExtraParens_MyStr1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallExtraParens_MyStr1Obj) =
  close(x.io)

### ParamsCallExtraParens ###
proc read*(_: typedesc[ParamsCallExtraParens], io: KaitaiStream, root: ParamsCallExtraParens, parent: ref RootObj): ParamsCallExtraParens =
  result = new(ParamsCallExtraParens)
  let root = if root == nil: cast[ParamsCallExtraParens](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let buf1 = ParamsCallExtraParens_MyStr1.read(io, result, root, 5)
  result.buf1 = buf1

proc fromFile*(_: typedesc[ParamsCallExtraParens], filename: string): ParamsCallExtraParens =
  ParamsCallExtraParens.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallExtraParensObj) =
  close(x.io)

