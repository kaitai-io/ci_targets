import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  IntegersMinMax* = ref object of KaitaiStruct
    unsignedMin*: IntegersMinMax_Unsigned
    unsignedMax*: IntegersMinMax_Unsigned
    signedMin*: IntegersMinMax_Signed
    signedMax*: IntegersMinMax_Signed
    parent*: KaitaiStruct
  IntegersMinMax_Unsigned* = ref object of KaitaiStruct
    u1*: uint8
    u2le*: uint16
    u4le*: uint32
    u8le*: uint64
    u2be*: uint16
    u4be*: uint32
    u8be*: uint64
    parent*: IntegersMinMax
  IntegersMinMax_Signed* = ref object of KaitaiStruct
    s1*: int8
    s2le*: int16
    s4le*: int32
    s8le*: int64
    s2be*: int16
    s4be*: int32
    s8be*: int64
    parent*: IntegersMinMax

proc read*(_: typedesc[IntegersMinMax], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IntegersMinMax
proc read*(_: typedesc[IntegersMinMax_Unsigned], io: KaitaiStream, root: KaitaiStruct, parent: IntegersMinMax): IntegersMinMax_Unsigned
proc read*(_: typedesc[IntegersMinMax_Signed], io: KaitaiStream, root: KaitaiStruct, parent: IntegersMinMax): IntegersMinMax_Signed


proc read*(_: typedesc[IntegersMinMax], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): IntegersMinMax =
  template this: untyped = result
  this = new(IntegersMinMax)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.unsignedMin = IntegersMinMax_Unsigned.read(this.io, this.root, this)
  this.unsignedMax = IntegersMinMax_Unsigned.read(this.io, this.root, this)
  this.signedMin = IntegersMinMax_Signed.read(this.io, this.root, this)
  this.signedMax = IntegersMinMax_Signed.read(this.io, this.root, this)

proc fromFile*(_: typedesc[IntegersMinMax], filename: string): IntegersMinMax =
  IntegersMinMax.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IntegersMinMax_Unsigned], io: KaitaiStream, root: KaitaiStruct, parent: IntegersMinMax): IntegersMinMax_Unsigned =
  template this: untyped = result
  this = new(IntegersMinMax_Unsigned)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.u1 = this.io.readU1()
  this.u2le = this.io.readU2le()
  this.u4le = this.io.readU4le()
  this.u8le = this.io.readU8le()
  this.u2be = this.io.readU2be()
  this.u4be = this.io.readU4be()
  this.u8be = this.io.readU8be()

proc fromFile*(_: typedesc[IntegersMinMax_Unsigned], filename: string): IntegersMinMax_Unsigned =
  IntegersMinMax_Unsigned.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[IntegersMinMax_Signed], io: KaitaiStream, root: KaitaiStruct, parent: IntegersMinMax): IntegersMinMax_Signed =
  template this: untyped = result
  this = new(IntegersMinMax_Signed)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.s1 = this.io.readS1()
  this.s2le = this.io.readS2le()
  this.s4le = this.io.readS4le()
  this.s8le = this.io.readS8le()
  this.s2be = this.io.readS2be()
  this.s4be = this.io.readS4be()
  this.s8be = this.io.readS8be()

proc fromFile*(_: typedesc[IntegersMinMax_Signed], filename: string): IntegersMinMax_Signed =
  IntegersMinMax_Signed.read(newKaitaiFileStream(filename), nil, nil)

