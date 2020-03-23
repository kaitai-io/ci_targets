import kaitai_struct_nim_runtime
import encodings

type
  ParamsCallExtraParensmyStr1* = ref ParamsCallExtraParensmyStr1Obj
  ParamsCallExtraParensmyStr1Obj* = object
    buf1*: MyStr1
    io*: KaitaiStream
    root*: ParamsCallExtraParens
    parent*: ref RootObj
  ParamsCallExtraParens* = ref ParamsCallExtraParensObj
  ParamsCallExtraParensObj* = object
    buf1*: MyStr1
    io*: KaitaiStream
    root*: ParamsCallExtraParens
    parent*: ref RootObj

### ParamsCallExtraParensmyStr1 ###
proc read*(_: typedesc[ParamsCallExtraParensmyStr1], io: KaitaiStream, root: ParamsCallExtraParens, parent: ParamsCallExtraParens): ParamsCallExtraParensmyStr1 =
  result = new(ParamsCallExtraParensmyStr1)
  let root = if root == nil: cast[ParamsCallExtraParens](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.body = convert(result.io.readBytes(len), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[ParamsCallExtraParensmyStr1], filename: string): ParamsCallExtraParensmyStr1 =
  ParamsCallExtraParensmyStr1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallExtraParensmyStr1Obj) =
  close(x.io)

### ParamsCallExtraParens ###
proc read*(_: typedesc[ParamsCallExtraParens], io: KaitaiStream, root: ParamsCallExtraParens, parent: ref RootObj): ParamsCallExtraParens =
  result = new(ParamsCallExtraParens)
  let root = if root == nil: cast[ParamsCallExtraParens](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.buf1 = MyStr1.read(result.io, result, root, 5)

proc fromFile*(_: typedesc[ParamsCallExtraParens], filename: string): ParamsCallExtraParens =
  ParamsCallExtraParens.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallExtraParensObj) =
  close(x.io)

