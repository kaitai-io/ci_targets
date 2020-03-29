import kaitai_struct_nim_runtime

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

### IntegersMinMax_Unsigned ###
proc read*(_: typedesc[IntegersMinMax_Unsigned], io: KaitaiStream, root: IntegersMinMax, parent: IntegersMinMax): IntegersMinMax_Unsigned =
  result = new(IntegersMinMax_Unsigned)
  let root = if root == nil: cast[IntegersMinMax](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let u1 = io.readU1()
  result.u1 = u1
  let u2le = io.readU2le()
  result.u2le = u2le
  let u4le = io.readU4le()
  result.u4le = u4le
  let u8le = io.readU8le()
  result.u8le = u8le
  let u2be = io.readU2be()
  result.u2be = u2be
  let u4be = io.readU4be()
  result.u4be = u4be
  let u8be = io.readU8be()
  result.u8be = u8be

proc fromFile*(_: typedesc[IntegersMinMax_Unsigned], filename: string): IntegersMinMax_Unsigned =
  IntegersMinMax_Unsigned.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersMinMax_UnsignedObj) =
  close(x.io)

### IntegersMinMax_Signed ###
proc read*(_: typedesc[IntegersMinMax_Signed], io: KaitaiStream, root: IntegersMinMax, parent: IntegersMinMax): IntegersMinMax_Signed =
  result = new(IntegersMinMax_Signed)
  let root = if root == nil: cast[IntegersMinMax](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let s1 = io.readS1()
  result.s1 = s1
  let s2le = io.readS2le()
  result.s2le = s2le
  let s4le = io.readS4le()
  result.s4le = s4le
  let s8le = io.readS8le()
  result.s8le = s8le
  let s2be = io.readS2be()
  result.s2be = s2be
  let s4be = io.readS4be()
  result.s4be = s4be
  let s8be = io.readS8be()
  result.s8be = s8be

proc fromFile*(_: typedesc[IntegersMinMax_Signed], filename: string): IntegersMinMax_Signed =
  IntegersMinMax_Signed.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersMinMax_SignedObj) =
  close(x.io)

### IntegersMinMax ###
proc read*(_: typedesc[IntegersMinMax], io: KaitaiStream, root: IntegersMinMax, parent: ref RootObj): IntegersMinMax =
  result = new(IntegersMinMax)
  let root = if root == nil: cast[IntegersMinMax](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let unsignedMin = IntegersMinMax_Unsigned.read(io, result, root)
  result.unsignedMin = unsignedMin
  let unsignedMax = IntegersMinMax_Unsigned.read(io, result, root)
  result.unsignedMax = unsignedMax
  let signedMin = IntegersMinMax_Signed.read(io, result, root)
  result.signedMin = signedMin
  let signedMax = IntegersMinMax_Signed.read(io, result, root)
  result.signedMax = signedMax

proc fromFile*(_: typedesc[IntegersMinMax], filename: string): IntegersMinMax =
  IntegersMinMax.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersMinMaxObj) =
  close(x.io)

