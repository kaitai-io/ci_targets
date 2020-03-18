import kaitai_struct_nim_runtime



type
  Unsigned* = ref UnsignedObj
  UnsignedObj* = object
    io: KaitaiStream
    root*: IntegersMinMax
    parent*: IntegersMinMax
    u1*: uint8
    u2le*: uint16
    u4le*: uint32
    u8le*: uint64
    u2be*: uint16
    u4be*: uint32
    u8be*: uint64
  Signed* = ref SignedObj
  SignedObj* = object
    io: KaitaiStream
    root*: IntegersMinMax
    parent*: IntegersMinMax
    s1*: int8
    s2le*: int16
    s4le*: int32
    s8le*: int64
    s2be*: int16
    s4be*: int32
    s8be*: int64
  IntegersMinMax* = ref IntegersMinMaxObj
  IntegersMinMaxObj* = object
    io: KaitaiStream
    root*: IntegersMinMax
    parent*: ref RootObj
    unsignedMin*: Unsigned
    unsignedMax*: Unsigned
    signedMin*: Signed
    signedMax*: Signed

# Unsigned
proc read*(_: typedesc[Unsigned], io: KaitaiStream, root: IntegersMinMax, parent: IntegersMinMax): owned Unsigned =
  result = new(Unsigned)
  let root = if root == nil: cast[IntegersMinMax](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let u1 = readU1(io)
  result.u1 = u1
  let u2le = readU2le(io)
  result.u2le = u2le
  let u4le = readU4le(io)
  result.u4le = u4le
  let u8le = readU8le(io)
  result.u8le = u8le
  let u2be = readU2be(io)
  result.u2be = u2be
  let u4be = readU4be(io)
  result.u4be = u4be
  let u8be = readU8be(io)
  result.u8be = u8be


proc fromFile*(_: typedesc[Unsigned], filename: string): owned Unsigned =
  Unsigned.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var UnsignedObj) =
  close(x.io)

# Signed
proc read*(_: typedesc[Signed], io: KaitaiStream, root: IntegersMinMax, parent: IntegersMinMax): owned Signed =
  result = new(Signed)
  let root = if root == nil: cast[IntegersMinMax](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let s1 = readS1(io)
  result.s1 = s1
  let s2le = readS2le(io)
  result.s2le = s2le
  let s4le = readS4le(io)
  result.s4le = s4le
  let s8le = readS8le(io)
  result.s8le = s8le
  let s2be = readS2be(io)
  result.s2be = s2be
  let s4be = readS4be(io)
  result.s4be = s4be
  let s8be = readS8be(io)
  result.s8be = s8be


proc fromFile*(_: typedesc[Signed], filename: string): owned Signed =
  Signed.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var SignedObj) =
  close(x.io)

# IntegersMinMax
proc read*(_: typedesc[IntegersMinMax], io: KaitaiStream, root: IntegersMinMax, parent: ref RootObj): owned IntegersMinMax =
  result = new(IntegersMinMax)
  let root = if root == nil: cast[IntegersMinMax](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let unsignedMin = Unsigned.read(io, root, result)
  result.unsignedMin = unsignedMin
  let unsignedMax = Unsigned.read(io, root, result)
  result.unsignedMax = unsignedMax
  let signedMin = Signed.read(io, root, result)
  result.signedMin = signedMin
  let signedMax = Signed.read(io, root, result)
  result.signedMax = signedMax


proc fromFile*(_: typedesc[IntegersMinMax], filename: string): owned IntegersMinMax =
  IntegersMinMax.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersMinMaxObj) =
  close(x.io)

