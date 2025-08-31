import kaitai_struct_nim_runtime
import options

type
  ParamsPassIo* = ref object of KaitaiStruct
    `first`*: ParamsPassIo_Block
    `one`*: ParamsPassIo_ParamType
    `parent`*: KaitaiStruct
    `rawFirst`*: seq[byte]
  ParamsPassIo_Block* = ref object of KaitaiStruct
    `foo`*: uint8
    `parent`*: ParamsPassIo
  ParamsPassIo_ParamType* = ref object of KaitaiStruct
    `buf`*: seq[byte]
    `argStream`*: KaitaiStream
    `parent`*: ParamsPassIo

proc read*(_: typedesc[ParamsPassIo], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassIo
proc read*(_: typedesc[ParamsPassIo_Block], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassIo): ParamsPassIo_Block
proc read*(_: typedesc[ParamsPassIo_ParamType], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassIo, argStream: any): ParamsPassIo_ParamType


proc read*(_: typedesc[ParamsPassIo], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ParamsPassIo =
  template this: untyped = result
  this = new(ParamsPassIo)
  let root = if root == nil: cast[ParamsPassIo](this) else: cast[ParamsPassIo](root)
  this.io = io
  this.root = root
  this.parent = parent

  let rawFirstExpr = this.io.readBytes(int(1))
  this.rawFirst = rawFirstExpr
  let rawFirstIo = newKaitaiStream(rawFirstExpr)
  let firstExpr = ParamsPassIo_Block.read(rawFirstIo, this.root, this)
  this.first = firstExpr
  let oneExpr = ParamsPassIo_ParamType.read(this.io, this.root, this, (if this.first.foo == 255: this.first.io else: ParamsPassIo(this.root).io))
  this.one = oneExpr

proc fromFile*(_: typedesc[ParamsPassIo], filename: string): ParamsPassIo =
  ParamsPassIo.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassIo_Block], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassIo): ParamsPassIo_Block =
  template this: untyped = result
  this = new(ParamsPassIo_Block)
  let root = if root == nil: cast[ParamsPassIo](this) else: cast[ParamsPassIo](root)
  this.io = io
  this.root = root
  this.parent = parent

  let fooExpr = this.io.readU1()
  this.foo = fooExpr

proc fromFile*(_: typedesc[ParamsPassIo_Block], filename: string): ParamsPassIo_Block =
  ParamsPassIo_Block.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[ParamsPassIo_ParamType], io: KaitaiStream, root: KaitaiStruct, parent: ParamsPassIo, argStream: any): ParamsPassIo_ParamType =
  template this: untyped = result
  this = new(ParamsPassIo_ParamType)
  let root = if root == nil: cast[ParamsPassIo](this) else: cast[ParamsPassIo](root)
  this.io = io
  this.root = root
  this.parent = parent
  let argStreamExpr = KaitaiStream(argStream)
  this.argStream = argStreamExpr

  let bufExpr = this.io.readBytes(int(this.argStream.size))
  this.buf = bufExpr

proc fromFile*(_: typedesc[ParamsPassIo_ParamType], filename: string): ParamsPassIo_ParamType =
  ParamsPassIo_ParamType.read(newKaitaiFileStream(filename), nil, nil)

