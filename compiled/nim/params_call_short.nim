import kaitai_struct_nim_runtime
import options
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

## ParamsCallShort_MyStr1
proc read*(_: typedesc[ParamsCallShort_MyStr1], io: KaitaiStream, root: ParamsCallShort, parent: ParamsCallShort): ParamsCallShort_MyStr1 =
  let this = new(ParamsCallShort_MyStr1)
  let root = if root == nil: cast[ParamsCallShort](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.body = convert(this.io.readBytes(int(this.len)), srcEncoding = "UTF-8")
  result = this

proc fromFile*(_: typedesc[ParamsCallShort_MyStr1], filename: string): ParamsCallShort_MyStr1 =
  ParamsCallShort_MyStr1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallShort_MyStr1Obj) =
  close(x.io)

## ParamsCallShort_MyStr2
proc read*(_: typedesc[ParamsCallShort_MyStr2], io: KaitaiStream, root: ParamsCallShort, parent: ParamsCallShort): ParamsCallShort_MyStr2 =
  let this = new(ParamsCallShort_MyStr2)
  let root = if root == nil: cast[ParamsCallShort](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.body = convert(this.io.readBytes(int(this.len)), srcEncoding = "UTF-8")
  if this.hasTrailer:
    this.trailer = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[ParamsCallShort_MyStr2], filename: string): ParamsCallShort_MyStr2 =
  ParamsCallShort_MyStr2.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallShort_MyStr2Obj) =
  close(x.io)

## ParamsCallShort
proc read*(_: typedesc[ParamsCallShort], io: KaitaiStream, root: ParamsCallShort, parent: ref RootObj): ParamsCallShort =
  let this = new(ParamsCallShort)
  let root = if root == nil: cast[ParamsCallShort](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.buf1 = ParamsCallShort_MyStr1.read(this.io, this.root, this, 5)
  this.buf2 = ParamsCallShort_MyStr2.read(this.io, this.root, this, (2 + 3), true)
  result = this

proc fromFile*(_: typedesc[ParamsCallShort], filename: string): ParamsCallShort =
  ParamsCallShort.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsCallShortObj) =
  close(x.io)

