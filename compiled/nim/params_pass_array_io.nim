import kaitai_struct_nim_runtime
import options

type
  ParamsPassArrayIo* = ref object of KaitaiStruct
    `first`*: ParamsPassArrayIo_Block
    `one`*: ParamsPassArrayIo_ParamType
    `parent`*: KaitaiStruct
    `rawFirst`*: seq[byte]
  ParamsPassArrayIo_Block* = ref object of KaitaiStruct
    `foo`*: uint8
    `parent`*: ParamsPassArrayIo
  ParamsPassArrayIo_ParamType* = ref object of KaitaiStruct
    `buf`*: seq[byte]
    `argStreams`*: seq[KaitaiStream]
    `parent`*: ParamsPassArrayIo

proc read*(_: typedesc[ParamsPassArrayIo], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassArrayIo
proc read*(_: typedesc[ParamsPassArrayIo_Block], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayIo): ParamsPassArrayIo_Block
proc read*(_: typedesc[ParamsPassArrayIo_ParamType], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayIo, argStreams: any): ParamsPassArrayIo_ParamType


proc read*(_: typedesc[ParamsPassArrayIo], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassArrayIo =
  template this: untyped = result
  this = new(ParamsPassArrayIo)
  let root = if root == nil: cast[ParamsPassArrayIo](this) else: cast[ParamsPassArrayIo](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawFirstExpr = this.io.readBytes(int(1))
  this.rawFirst = rawFirstExpr
  let rawFirstIo = newKaitaiStream(rawFirstExpr)
  let firstExpr = ParamsPassArrayIo_Block.read(rawFirstIo, this.root, this)
  this.first = firstExpr
  let oneExpr = ParamsPassArrayIo_ParamType.read(this.io, this.root, this, @[KaitaiStream(this.first.io), KaitaiStream(ParamsPassArrayIo(this.root).io)])
  this.one = oneExpr

proc fromFile*(_: typedesc[ParamsPassArrayIo], filename: string): ParamsPassArrayIo =
  ParamsPassArrayIo.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassArrayIo_Block], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayIo): ParamsPassArrayIo_Block =
  template this: untyped = result
  this = new(ParamsPassArrayIo_Block)
  let root = if root == nil: cast[ParamsPassArrayIo](this) else: cast[ParamsPassArrayIo](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr

proc fromFile*(_: typedesc[ParamsPassArrayIo_Block], filename: string): ParamsPassArrayIo_Block =
  ParamsPassArrayIo_Block.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassArrayIo_ParamType], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassArrayIo, argStreams: any): ParamsPassArrayIo_ParamType =
  template this: untyped = result
  this = new(ParamsPassArrayIo_ParamType)
  let root = if root == nil: cast[ParamsPassArrayIo](this) else: cast[ParamsPassArrayIo](root)
  this.io = io
  this.root = root
  this.parent = parent
  let argStreamsExpr = seq[KaitaiStream](argStreams)
  this.argStreams = argStreamsExpr

  let bufExpr = this.io.readBytes(int(this.argStreams[0].size))
  this.buf = bufExpr

proc fromFile*(_: typedesc[ParamsPassArrayIo_ParamType], filename: string): ParamsPassArrayIo_ParamType =
  ParamsPassArrayIo_ParamType.read(newKaitaiFileStream(filename), nil, nil)

