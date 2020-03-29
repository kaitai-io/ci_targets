import kaitai_struct_nim_runtime

type
  ExprBits_EndianSwitch* = ref ExprBits_EndianSwitchObj
  ExprBits_EndianSwitchObj* = object
    foo*: int16
    io*: KaitaiStream
    root*: ExprBits
    parent*: ExprBits
  ExprBits* = ref ExprBitsObj
  ExprBitsObj* = object
    enumSeq*: Items
    a*: uint64
    byteSize*: string
    repeatExpr*: seq[int8]
    switchOnType*: int8
    switchOnEndian*: ExprBits_EndianSwitch
    io*: KaitaiStream
    root*: ExprBits
    parent*: ref RootObj

### ExprBits_EndianSwitch ###
proc read*(_: typedesc[ExprBits_EndianSwitch], io: KaitaiStream, root: ExprBits, parent: ExprBits): ExprBits_EndianSwitch =
  result = new(ExprBits_EndianSwitch)
  let root = if root == nil: cast[ExprBits](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let isLe = true
  result.isLe = isLe
  let isLe = false
  result.isLe = isLe

  if isNone(isLe):
    raise newException(KaitaiError, "Kaitai Struct error")
  elif isLe:
    readLe()
  else:
    readBe()
  let foo = io.readS2le()
  result.foo = foo
  let foo = io.readS2be()
  result.foo = foo

proc fromFile*(_: typedesc[ExprBits_EndianSwitch], filename: string): ExprBits_EndianSwitch =
  ExprBits_EndianSwitch.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprBits_EndianSwitchObj) =
  close(x.io)

### ExprBits ###
proc read*(_: typedesc[ExprBits], io: KaitaiStream, root: ExprBits, parent: ref RootObj): ExprBits =
  result = new(ExprBits)
  let root = if root == nil: cast[ExprBits](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let enumSeq = 
  result.enumSeq = enumSeq
  let a = io.readBitsInt(3)
  result.a = a
  alignToByte(io)
  let byteSize = io.readBytes(int(a))
  result.byteSize = byteSize
  repeatExpr = newSeq[int8](a)
  for i in 0 ..< a:
    repeatExpr.add(io.readS1())
  let switchOnType = io.readS1()
  result.switchOnType = switchOnType
  let switchOnEndian = ExprBits_EndianSwitch.read(io, result, root)
  result.switchOnEndian = switchOnEndian

proc fromFile*(_: typedesc[ExprBits], filename: string): ExprBits =
  ExprBits.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprBitsObj) =
  close(x.io)

