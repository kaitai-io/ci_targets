import kaitai_struct_nim_runtime

type
  ExprBitsendianSwitch* = ref ExprBitsendianSwitchObj
  ExprBitsendianSwitchObj* = object
    enumSeq*: Items
    a*: uint64
    byteSize*: string
    repeatExpr*: seq[int8]
    switchOnType*: int8
    switchOnEndian*: EndianSwitch
    io*: KaitaiStream
    root*: ExprBits
    parent*: ref RootObj
  ExprBits* = ref ExprBitsObj
  ExprBitsObj* = object
    enumSeq*: Items
    a*: uint64
    byteSize*: string
    repeatExpr*: seq[int8]
    switchOnType*: int8
    switchOnEndian*: EndianSwitch
    io*: KaitaiStream
    root*: ExprBits
    parent*: ref RootObj

### ExprBitsendianSwitch ###
proc read*(_: typedesc[ExprBitsendianSwitch], io: KaitaiStream, root: ExprBits, parent: ExprBits): ExprBitsendianSwitch =
  result = new(ExprBitsendianSwitch)
  let root = if root == nil: cast[ExprBits](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.isLe = true
  result.isLe = false

  if isNone(isLe):
    raise newException(KaitaiError, "Kaitai Struct error")
  elif isLe:
    readLe()
  else:
    readBe()
  result.foo = result.io.readS2le()
  result.foo = result.io.readS2be()

proc fromFile*(_: typedesc[ExprBitsendianSwitch], filename: string): ExprBitsendianSwitch =
  ExprBitsendianSwitch.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprBitsendianSwitchObj) =
  close(x.io)

### ExprBits ###
proc read*(_: typedesc[ExprBits], io: KaitaiStream, root: ExprBits, parent: ref RootObj): ExprBits =
  result = new(ExprBits)
  let root = if root == nil: cast[ExprBits](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.enumSeq = 
  result.a = result.io.readBitsInt(3)
  alignToByte(result.io)
  result.byteSize = result.io.readBytes(a)
  repeatExpr = newSeq[int8](a)
  for i in 0 ..< a:
    result.repeatExpr.add(result.io.readS1())
  result.switchOnType = result.io.readS1()
  result.switchOnEndian = EndianSwitch.read(result.io, result, root)

proc fromFile*(_: typedesc[ExprBits], filename: string): ExprBits =
  ExprBits.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ExprBitsObj) =
  close(x.io)

