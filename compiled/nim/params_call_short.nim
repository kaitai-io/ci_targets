import kaitai_struct_nim_runtime
import encodings

type
  ParamsCallShort_MyStr1* = ref ParamsCallShort_MyStr1Obj
  ParamsCallShort_MyStr1Obj* = object
    body*: string
    len*: uint32
    io*: KaitaiStream
    root*: ParamsCallShort
    parent*: ParamsCallShort
  ParamsCallShort_MyStr2* = ref ParamsCallShort_MyStr2Obj
  ParamsCallShort_MyStr2Obj* = object
    body*: string
    trailer*: uint8
    len*: uint32
    hasTrailer*: bool
    io*: KaitaiStream
    root*: ParamsCallShort
    parent*: ParamsCallShort
  ParamsCallShort* = ref ParamsCallShortObj
  ParamsCallShortObj* = object
    buf1*: ParamsCallShort_MyStr1
    buf2*: ParamsCallShort_MyStr2
    io*: KaitaiStream
    root*: ParamsCallShort
    parent*: ref RootObj

### ParamsCallShort_MyStr1 ###
proc read*(_: typedesc[ParamsCallShort_MyStr1], io: KaitaiStream, root: ParamsCallShort, parent: ParamsCallShort): ParamsCallShort_MyStr1 =
  result = new(ParamsCallShort_MyStr1)
  let root = if root == nil: cast[ParamsCallShort](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let body = convert(io.readBytes(int(len)), srcEncoding = "UTF-8")
  result.body = body

proc fromFile*(_: typedesc[ParamsCallShort_MyStr1], filename: string): ParamsCallShort_MyStr1 =
  ParamsCallShort_MyStr1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallShort_MyStr1Obj) =
  close(x.io)

### ParamsCallShort_MyStr2 ###
proc read*(_: typedesc[ParamsCallShort_MyStr2], io: KaitaiStream, root: ParamsCallShort, parent: ParamsCallShort): ParamsCallShort_MyStr2 =
  result = new(ParamsCallShort_MyStr2)
  let root = if root == nil: cast[ParamsCallShort](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let body = convert(io.readBytes(int(len)), srcEncoding = "UTF-8")
  result.body = body
  if hasTrailer:
    let trailer = io.readU1()
    result.trailer = trailer

proc fromFile*(_: typedesc[ParamsCallShort_MyStr2], filename: string): ParamsCallShort_MyStr2 =
  ParamsCallShort_MyStr2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallShort_MyStr2Obj) =
  close(x.io)

### ParamsCallShort ###
proc read*(_: typedesc[ParamsCallShort], io: KaitaiStream, root: ParamsCallShort, parent: ref RootObj): ParamsCallShort =
  result = new(ParamsCallShort)
  let root = if root == nil: cast[ParamsCallShort](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let buf1 = ParamsCallShort_MyStr1.read(io, result, root, 5)
  result.buf1 = buf1
  let buf2 = ParamsCallShort_MyStr2.read(io, result, root, (2 + 3), true)
  result.buf2 = buf2

proc fromFile*(_: typedesc[ParamsCallShort], filename: string): ParamsCallShort =
  ParamsCallShort.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallShortObj) =
  close(x.io)

