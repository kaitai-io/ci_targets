import kaitai_struct_nim_runtime
import options

type
  ParamsPassUsertype_Block* = ref ParamsPassUsertype_BlockObj
  ParamsPassUsertype_BlockObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: ParamsPassUsertype
    parent*: ParamsPassUsertype
  ParamsPassUsertype_ParamType* = ref ParamsPassUsertype_ParamTypeObj
  ParamsPassUsertype_ParamTypeObj* = object
    buf*: string
    foo*: ParamsPassUsertype_Block
    io*: KaitaiStream
    root*: ParamsPassUsertype
    parent*: ParamsPassUsertype
  ParamsPassUsertype* = ref ParamsPassUsertypeObj
  ParamsPassUsertypeObj* = object
    first*: ParamsPassUsertype_Block
    one*: ParamsPassUsertype_ParamType
    io*: KaitaiStream
    root*: ParamsPassUsertype
    parent*: ref RootObj

## ParamsPassUsertype_Block
proc read*(_: typedesc[ParamsPassUsertype_Block], io: KaitaiStream, root: ParamsPassUsertype, parent: ParamsPassUsertype): ParamsPassUsertype_Block =
  let this = new(ParamsPassUsertype_Block)
  let root = if root == nil: cast[ParamsPassUsertype](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[ParamsPassUsertype_Block], filename: string): ParamsPassUsertype_Block =
  ParamsPassUsertype_Block.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsPassUsertype_BlockObj) =
  close(x.io)

## ParamsPassUsertype_ParamType
proc read*(_: typedesc[ParamsPassUsertype_ParamType], io: KaitaiStream, root: ParamsPassUsertype, parent: ParamsPassUsertype): ParamsPassUsertype_ParamType =
  let this = new(ParamsPassUsertype_ParamType)
  let root = if root == nil: cast[ParamsPassUsertype](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.buf = this.io.readBytes(int(this.foo.foo))
  result = this

proc fromFile*(_: typedesc[ParamsPassUsertype_ParamType], filename: string): ParamsPassUsertype_ParamType =
  ParamsPassUsertype_ParamType.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsPassUsertype_ParamTypeObj) =
  close(x.io)

## ParamsPassUsertype
proc read*(_: typedesc[ParamsPassUsertype], io: KaitaiStream, root: ParamsPassUsertype, parent: ref RootObj): ParamsPassUsertype =
  let this = new(ParamsPassUsertype)
  let root = if root == nil: cast[ParamsPassUsertype](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.first = ParamsPassUsertype_Block.read(this.io, this.root, this)
  this.one = ParamsPassUsertype_ParamType.read(this.io, this.root, this, this.first)
  result = this

proc fromFile*(_: typedesc[ParamsPassUsertype], filename: string): ParamsPassUsertype =
  ParamsPassUsertype.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ParamsPassUsertypeObj) =
  close(x.io)

