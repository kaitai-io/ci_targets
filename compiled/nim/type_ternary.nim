import kaitai_struct_nim_runtime
import options

type
  TypeTernary* = ref object of KaitaiStruct
    `difWoHack`*: TypeTernary_Dummy
    `difWithHack`*: TypeTernary_Dummy
    `parent`*: KaitaiStruct
    `rawDifWoHack`*: seq[byte]
    `rawDifWithHack`*: seq[byte]
    `rawRawDifWithHack`*: seq[byte]
    `isHackInst`*: bool
    `difInst`*: TypeTernary_Dummy
    `difValueInst`*: uint8
  TypeTernary_Dummy* = ref object of KaitaiStruct
    `value`*: uint8
    `parent`*: TypeTernary

proc read*(_: typedesc[TypeTernary], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernary
proc read*(_: typedesc[TypeTernary_Dummy], io: KaitaiStream, root: KaitaiStruct, parent: TypeTernary): TypeTernary_Dummy

proc isHack*(this: TypeTernary): bool
proc dif*(this: TypeTernary): TypeTernary_Dummy
proc difValue*(this: TypeTernary): uint8

proc read*(_: typedesc[TypeTernary], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernary =
  template this: untyped = result
  this = new(TypeTernary)
  let root = if root == nil: cast[TypeTernary](this) else: cast[TypeTernary](root)
  this.io = io
  this.root = root
  this.parent = parent

  if not(this.isHack):
    let rawDifWoHackExpr = this.io.readBytes(int(1))
    this.rawDifWoHack = rawDifWoHackExpr
    let rawDifWoHackIo = newKaitaiStream(rawDifWoHackExpr)
    let difWoHackExpr = TypeTernary_Dummy.read(rawDifWoHackIo, this.root, this)
    this.difWoHack = difWoHackExpr
  let rawRawDifWithHackExpr = this.io.readBytes(int(1))
  this.rawRawDifWithHack = rawRawDifWithHackExpr
  let rawDifWithHackExpr = this.rawRawDifWithHack.processXor(3)
  this.rawDifWithHack = rawDifWithHackExpr
  let rawDifWithHackIo = newKaitaiStream(rawDifWithHackExpr)
  let difWithHackExpr = TypeTernary_Dummy.read(rawDifWithHackIo, this.root, this)
  this.difWithHack = difWithHackExpr

proc isHack(this: TypeTernary): bool = 
  if this.isHackInst != nil:
    return this.isHackInst
  let isHackInstExpr = bool(true)
  this.isHackInst = isHackInstExpr
  if this.isHackInst != nil:
    return this.isHackInst

proc dif(this: TypeTernary): TypeTernary_Dummy = 
  if this.difInst != nil:
    return this.difInst
  let difInstExpr = TypeTernary_Dummy((if not(this.isHack): this.difWoHack else: this.difWithHack))
  this.difInst = difInstExpr
  if this.difInst != nil:
    return this.difInst

proc difValue(this: TypeTernary): uint8 = 
  if this.difValueInst != nil:
    return this.difValueInst
  let difValueInstExpr = uint8(this.dif.value)
  this.difValueInst = difValueInstExpr
  if this.difValueInst != nil:
    return this.difValueInst

proc fromFile*(_: typedesc[TypeTernary], filename: string): TypeTernary =
  TypeTernary.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TypeTernary_Dummy], io: KaitaiStream, root: KaitaiStruct, parent: TypeTernary): TypeTernary_Dummy =
  template this: untyped = result
  this = new(TypeTernary_Dummy)
  let root = if root == nil: cast[TypeTernary](this) else: cast[TypeTernary](root)
  this.io = io
  this.root = root
  this.parent = parent

  let valueExpr = this.io.readU1()
  this.value = valueExpr

proc fromFile*(_: typedesc[TypeTernary_Dummy], filename: string): TypeTernary_Dummy =
  TypeTernary_Dummy.read(newKaitaiFileStream(filename), nil, nil)

