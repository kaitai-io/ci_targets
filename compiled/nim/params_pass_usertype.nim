import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ParamsPassUsertype* = ref object of KaitaiStruct
    first*: ParamsPassUsertype_Block
    one*: ParamsPassUsertype_ParamType
    parent*: KaitaiStruct
  ParamsPassUsertype_Block* = ref object of KaitaiStruct
    foo*: uint8
    parent*: ParamsPassUsertype
  ParamsPassUsertype_ParamType* = ref object of KaitaiStruct
    buf*: seq[byte]
    foo*: ParamsPassUsertype_Block
    parent*: ParamsPassUsertype

proc read*(_: typedesc[ParamsPassUsertype], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassUsertype
proc read*(_: typedesc[ParamsPassUsertype_Block], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassUsertype): ParamsPassUsertype_Block
proc read*(_: typedesc[ParamsPassUsertype_ParamType], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassUsertype, foo: any): ParamsPassUsertype_ParamType


proc read*(_: typedesc[ParamsPassUsertype], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassUsertype =
  template this: untyped = result
  this = new(ParamsPassUsertype)
  let root = if root == nil: cast[ParamsPassUsertype](this) else: cast[ParamsPassUsertype](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.first = ParamsPassUsertype_Block.read(this.io, this.root, this)
  this.one = ParamsPassUsertype_ParamType.read(this.io, this.root, this, this.first)

proc fromFile*(_: typedesc[ParamsPassUsertype], filename: string): ParamsPassUsertype =
  ParamsPassUsertype.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassUsertype_Block], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassUsertype): ParamsPassUsertype_Block =
  template this: untyped = result
  this = new(ParamsPassUsertype_Block)
  let root = if root == nil: cast[ParamsPassUsertype](this) else: cast[ParamsPassUsertype](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readU1()

proc fromFile*(_: typedesc[ParamsPassUsertype_Block], filename: string): ParamsPassUsertype_Block =
  ParamsPassUsertype_Block.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassUsertype_ParamType], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassUsertype, foo: any): ParamsPassUsertype_ParamType =
  template this: untyped = result
  this = new(ParamsPassUsertype_ParamType)
  let root = if root == nil: cast[ParamsPassUsertype](this) else: cast[ParamsPassUsertype](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.buf = this.io.readBytes(int(this.foo.foo))

proc fromFile*(_: typedesc[ParamsPassUsertype_ParamType], filename: string): ParamsPassUsertype_ParamType =
  ParamsPassUsertype_ParamType.read(newKaitaiFileStream(filename), nil, nil)

