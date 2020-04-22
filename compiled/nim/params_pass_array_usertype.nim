import kaitai_struct_nim_runtime
import options

type
  ParamsPassArrayUsertype* = ref object of KaitaiStruct
    blocks*: seq[ParamsPassArrayUsertype_Block]
    passBlocks*: ParamsPassArrayUsertype_ParamType
    parent*: KaitaiStruct
  ParamsPassArrayUsertype_Block* = ref object of KaitaiStruct
    foo*: uint8
    parent*: ParamsPassArrayUsertype
  ParamsPassArrayUsertype_ParamType* = ref object of KaitaiStruct
    one*: seq[byte]
    two*: seq[byte]
    bar*: seq[ParamsPassArrayUsertype_Block]
    parent*: ParamsPassArrayUsertype

proc read*(_: typedesc[ParamsPassArrayUsertype], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassArrayUsertype
proc read*(_: typedesc[ParamsPassArrayUsertype_Block], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayUsertype): ParamsPassArrayUsertype_Block
proc read*(_: typedesc[ParamsPassArrayUsertype_ParamType], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayUsertype, bar: any): ParamsPassArrayUsertype_ParamType


proc read*(_: typedesc[ParamsPassArrayUsertype], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassArrayUsertype =
  template this: untyped = result
  this = new(ParamsPassArrayUsertype)
  let root = if root == nil: cast[ParamsPassArrayUsertype](this) else: cast[ParamsPassArrayUsertype](root)
  this.io = io
  this.root = root
  this.parent = parent

  for i in 0 ..< int(2):
    let it = ParamsPassArrayUsertype_Block.read(this.io, this.root, this)
    this.blocks.add(it)
  let passBlocksExpr = ParamsPassArrayUsertype_ParamType.read(this.io, this.root, this, this.blocks)
  this.passBlocks = passBlocksExpr

proc fromFile*(_: typedesc[ParamsPassArrayUsertype], filename: string): ParamsPassArrayUsertype =
  ParamsPassArrayUsertype.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassArrayUsertype_Block], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayUsertype): ParamsPassArrayUsertype_Block =
  template this: untyped = result
  this = new(ParamsPassArrayUsertype_Block)
  let root = if root == nil: cast[ParamsPassArrayUsertype](this) else: cast[ParamsPassArrayUsertype](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr

proc fromFile*(_: typedesc[ParamsPassArrayUsertype_Block], filename: string): ParamsPassArrayUsertype_Block =
  ParamsPassArrayUsertype_Block.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassArrayUsertype_ParamType], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayUsertype, bar: any): ParamsPassArrayUsertype_ParamType =
  template this: untyped = result
  this = new(ParamsPassArrayUsertype_ParamType)
  let root = if root == nil: cast[ParamsPassArrayUsertype](this) else: cast[ParamsPassArrayUsertype](root)
  this.io = io
  this.root = root
  this.parent = parent
  let barExpr = seq[ParamsPassArrayUsertype_Block](bar)
  this.bar = barExpr

  let oneExpr = this.io.readBytes(int(this.bar[0].foo))
  this.one = oneExpr
  let twoExpr = this.io.readBytes(int(this.bar[1].foo))
  this.two = twoExpr

proc fromFile*(_: typedesc[ParamsPassArrayUsertype_ParamType], filename: string): ParamsPassArrayUsertype_ParamType =
  ParamsPassArrayUsertype_ParamType.read(newKaitaiFileStream(filename), nil, nil)

