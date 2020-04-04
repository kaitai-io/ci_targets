import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  TypeTernary* = ref object of KaitaiStruct
    difWoHack*: TypeTernary_Dummy
    difWithHack*: TypeTernary_Dummy
    parent*: KaitaiStruct
    rawDifWoHack*: string
    rawDifWithHack*: string
    rawRawDifWithHack*: string
    isHackInst*: Option[bool]
    difInst*: Option[TypeTernary_Dummy]
    difValueInst*: Option[uint8]
  TypeTernary_Dummy* = ref object of KaitaiStruct
    value*: uint8
    parent*: TypeTernary

proc read*(_: typedesc[TypeTernary], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernary
proc read*(_: typedesc[TypeTernary_Dummy], io: KaitaiStream, root: KaitaiStruct, parent: TypeTernary): TypeTernary_Dummy

proc isHack*(this: TypeTernary): bool
proc dif*(this: TypeTernary): TypeTernary_Dummy
proc difValue*(this: TypeTernary): uint8

proc read*(_: typedesc[TypeTernary], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): TypeTernary =
  template this: untyped = result
  this = new(TypeTernary)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  if not(this.isHack):
    this.rawDifWoHack = this.io.readBytes(int(1))
    let rawDifWoHackIo = newKaitaiStringStream(this.rawDifWoHack)
    this.difWoHack = TypeTernary_Dummy.read(rawDifWoHackIo, this.root, this)
  this.rawRawDifWithHack = this.io.readBytes(int(1))
  this.rawDifWithHack = rawRawDifWithHack.processXor(3)
  let rawDifWithHackIo = newKaitaiStringStream(this.rawDifWithHack)
  this.difWithHack = TypeTernary_Dummy.read(rawDifWithHackIo, this.root, this)

proc isHack(this: TypeTernary): bool = 
  if isSome(this.isHackInst):
    return get(this.isHackInst)
  this.isHackInst = some(true)
  if isSome(this.isHackInst):
    return get(this.isHackInst)

proc dif(this: TypeTernary): TypeTernary_Dummy = 
  if isSome(this.difInst):
    return get(this.difInst)
  this.difInst = some((if not(this.isHack): this.difWoHack else: this.difWithHack))
  if isSome(this.difInst):
    return get(this.difInst)

proc difValue(this: TypeTernary): uint8 = 
  if isSome(this.difValueInst):
    return get(this.difValueInst)
  this.difValueInst = some(this.dif.value)
  if isSome(this.difValueInst):
    return get(this.difValueInst)

proc fromFile*(_: typedesc[TypeTernary], filename: string): TypeTernary =
  TypeTernary.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[TypeTernary_Dummy], io: KaitaiStream, root: KaitaiStruct, parent: TypeTernary): TypeTernary_Dummy =
  template this: untyped = result
  this = new(TypeTernary_Dummy)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.value = this.io.readU1()

proc fromFile*(_: typedesc[TypeTernary_Dummy], filename: string): TypeTernary_Dummy =
  TypeTernary_Dummy.read(newKaitaiFileStream(filename), nil, nil)

