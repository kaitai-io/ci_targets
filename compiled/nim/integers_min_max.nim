import kaitai_struct_nim_runtime
import options

type
  IntegersMinMax_Unsigned* = ref IntegersMinMax_UnsignedObj
  IntegersMinMax_UnsignedObj* = object
    u1*: uint8
    u2le*: uint16
    u4le*: uint32
    u8le*: uint64
    u2be*: uint16
    u4be*: uint32
    u8be*: uint64
    io*: KaitaiStream
    root*: IntegersMinMax
    parent*: IntegersMinMax
  IntegersMinMax_Signed* = ref IntegersMinMax_SignedObj
  IntegersMinMax_SignedObj* = object
    s1*: int8
    s2le*: int16
    s4le*: int32
    s8le*: int64
    s2be*: int16
    s4be*: int32
    s8be*: int64
    io*: KaitaiStream
    root*: IntegersMinMax
    parent*: IntegersMinMax
  IntegersMinMax* = ref IntegersMinMaxObj
  IntegersMinMaxObj* = object
    unsignedMin*: IntegersMinMax_Unsigned
    unsignedMax*: IntegersMinMax_Unsigned
    signedMin*: IntegersMinMax_Signed
    signedMax*: IntegersMinMax_Signed
    io*: KaitaiStream
    root*: IntegersMinMax
    parent*: ref RootObj

## IntegersMinMax_Unsigned
proc read*(_: typedesc[IntegersMinMax_Unsigned], io: KaitaiStream, root: IntegersMinMax, parent: IntegersMinMax): IntegersMinMax_Unsigned =
  let this = new(IntegersMinMax_Unsigned)
  let root = if root == nil: cast[IntegersMinMax](result) else: root
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
  result = this

proc fromFile*(_: typedesc[IntegersMinMax_Unsigned], filename: string): IntegersMinMax_Unsigned =
  IntegersMinMax_Unsigned.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersMinMax_UnsignedObj) =
  close(x.io)

## IntegersMinMax_Signed
proc read*(_: typedesc[IntegersMinMax_Signed], io: KaitaiStream, root: IntegersMinMax, parent: IntegersMinMax): IntegersMinMax_Signed =
  let this = new(IntegersMinMax_Signed)
  let root = if root == nil: cast[IntegersMinMax](result) else: root
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
  result = this

proc fromFile*(_: typedesc[IntegersMinMax_Signed], filename: string): IntegersMinMax_Signed =
  IntegersMinMax_Signed.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersMinMax_SignedObj) =
  close(x.io)

## IntegersMinMax
proc read*(_: typedesc[IntegersMinMax], io: KaitaiStream, root: IntegersMinMax, parent: ref RootObj): IntegersMinMax =
  let this = new(IntegersMinMax)
  let root = if root == nil: cast[IntegersMinMax](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.unsignedMin = IntegersMinMax_Unsigned.read(this.io, this.root, this)
  this.unsignedMax = IntegersMinMax_Unsigned.read(this.io, this.root, this)
  this.signedMin = IntegersMinMax_Signed.read(this.io, this.root, this)
  this.signedMax = IntegersMinMax_Signed.read(this.io, this.root, this)
  result = this

proc fromFile*(_: typedesc[IntegersMinMax], filename: string): IntegersMinMax =
  IntegersMinMax.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersMinMaxObj) =
  close(x.io)

