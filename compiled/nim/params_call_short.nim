import kaitai_struct_nim_runtime
import encodings

type
  ParamsCallShortmyStr1* = ref ParamsCallShortmyStr1Obj
  ParamsCallShortmyStr1Obj* = object
    buf1*: MyStr1
    buf2*: MyStr2
    io*: KaitaiStream
    root*: ParamsCallShort
    parent*: ref RootObj
  ParamsCallShortmyStr2* = ref ParamsCallShortmyStr2Obj
  ParamsCallShortmyStr2Obj* = object
    buf1*: MyStr1
    buf2*: MyStr2
    io*: KaitaiStream
    root*: ParamsCallShort
    parent*: ref RootObj
  ParamsCallShort* = ref ParamsCallShortObj
  ParamsCallShortObj* = object
    buf1*: MyStr1
    buf2*: MyStr2
    io*: KaitaiStream
    root*: ParamsCallShort
    parent*: ref RootObj

### ParamsCallShortmyStr1 ###
proc read*(_: typedesc[ParamsCallShortmyStr1], io: KaitaiStream, root: ParamsCallShort, parent: ParamsCallShort): ParamsCallShortmyStr1 =
  result = new(ParamsCallShortmyStr1)
  let root = if root == nil: cast[ParamsCallShort](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.body = convert(result.io.readBytes(len), srcEncoding = "UTF-8")

proc fromFile*(_: typedesc[ParamsCallShortmyStr1], filename: string): ParamsCallShortmyStr1 =
  ParamsCallShortmyStr1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallShortmyStr1Obj) =
  close(x.io)

### ParamsCallShortmyStr2 ###
proc read*(_: typedesc[ParamsCallShortmyStr2], io: KaitaiStream, root: ParamsCallShort, parent: ParamsCallShort): ParamsCallShortmyStr2 =
  result = new(ParamsCallShortmyStr2)
  let root = if root == nil: cast[ParamsCallShort](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.body = convert(result.io.readBytes(len), srcEncoding = "UTF-8")
  if hasTrailer:
    result.trailer = result.io.readU1()

proc fromFile*(_: typedesc[ParamsCallShortmyStr2], filename: string): ParamsCallShortmyStr2 =
  ParamsCallShortmyStr2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallShortmyStr2Obj) =
  close(x.io)

### ParamsCallShort ###
proc read*(_: typedesc[ParamsCallShort], io: KaitaiStream, root: ParamsCallShort, parent: ref RootObj): ParamsCallShort =
  result = new(ParamsCallShort)
  let root = if root == nil: cast[ParamsCallShort](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.buf1 = MyStr1.read(result.io, result, root, 5)
  result.buf2 = MyStr2.read(result.io, result, root, (2 + 3), true)

proc fromFile*(_: typedesc[ParamsCallShort], filename: string): ParamsCallShort =
  ParamsCallShort.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallShortObj) =
  close(x.io)

