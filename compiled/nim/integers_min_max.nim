import kaitai_struct_nim_runtime

type
  IntegersMinMaxunsigned* = ref IntegersMinMaxunsignedObj
  IntegersMinMaxunsignedObj* = object
    unsignedMin*: Unsigned
    unsignedMax*: Unsigned
    signedMin*: Signed
    signedMax*: Signed
    io*: KaitaiStream
    root*: IntegersMinMax
    parent*: ref RootObj
  IntegersMinMaxsigned* = ref IntegersMinMaxsignedObj
  IntegersMinMaxsignedObj* = object
    unsignedMin*: Unsigned
    unsignedMax*: Unsigned
    signedMin*: Signed
    signedMax*: Signed
    io*: KaitaiStream
    root*: IntegersMinMax
    parent*: ref RootObj
  IntegersMinMax* = ref IntegersMinMaxObj
  IntegersMinMaxObj* = object
    unsignedMin*: Unsigned
    unsignedMax*: Unsigned
    signedMin*: Signed
    signedMax*: Signed
    io*: KaitaiStream
    root*: IntegersMinMax
    parent*: ref RootObj

### IntegersMinMaxunsigned ###
proc read*(_: typedesc[IntegersMinMaxunsigned], io: KaitaiStream, root: IntegersMinMax, parent: IntegersMinMax): IntegersMinMaxunsigned =
  result = new(IntegersMinMaxunsigned)
  let root = if root == nil: cast[IntegersMinMax](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.u1 = result.io.readU1()
  result.u2le = result.io.readU2le()
  result.u4le = result.io.readU4le()
  result.u8le = result.io.readU8le()
  result.u2be = result.io.readU2be()
  result.u4be = result.io.readU4be()
  result.u8be = result.io.readU8be()

proc fromFile*(_: typedesc[IntegersMinMaxunsigned], filename: string): IntegersMinMaxunsigned =
  IntegersMinMaxunsigned.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersMinMaxunsignedObj) =
  close(x.io)

### IntegersMinMaxsigned ###
proc read*(_: typedesc[IntegersMinMaxsigned], io: KaitaiStream, root: IntegersMinMax, parent: IntegersMinMax): IntegersMinMaxsigned =
  result = new(IntegersMinMaxsigned)
  let root = if root == nil: cast[IntegersMinMax](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.s1 = result.io.readS1()
  result.s2le = result.io.readS2le()
  result.s4le = result.io.readS4le()
  result.s8le = result.io.readS8le()
  result.s2be = result.io.readS2be()
  result.s4be = result.io.readS4be()
  result.s8be = result.io.readS8be()

proc fromFile*(_: typedesc[IntegersMinMaxsigned], filename: string): IntegersMinMaxsigned =
  IntegersMinMaxsigned.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersMinMaxsignedObj) =
  close(x.io)

### IntegersMinMax ###
proc read*(_: typedesc[IntegersMinMax], io: KaitaiStream, root: IntegersMinMax, parent: ref RootObj): IntegersMinMax =
  result = new(IntegersMinMax)
  let root = if root == nil: cast[IntegersMinMax](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.unsignedMin = Unsigned.read(result.io, result, root)
  result.unsignedMax = Unsigned.read(result.io, result, root)
  result.signedMin = Signed.read(result.io, result, root)
  result.signedMax = Signed.read(result.io, result, root)

proc fromFile*(_: typedesc[IntegersMinMax], filename: string): IntegersMinMax =
  IntegersMinMax.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var IntegersMinMaxObj) =
  close(x.io)

