import ../runtime/nim/kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  Dummy* = ref DummyObj
  DummyObj* = object
    io: KaitaiStream
    root*: TypeTernary
    parent*: TypeTernary
    value*: uint8
  TypeTernary* = ref TypeTernaryObj
  TypeTernaryObj* = object
    io: KaitaiStream
    root*: TypeTernary
    parent*: ref RootObj
    difWoHack*: Dummy
    difWithHack*: Dummy
    isHackInst: proc(): bool
    difInst: proc(): Dummy
    difValueInst: proc(): uint8

# Dummy
proc read*(_: typedesc[Dummy], io: KaitaiStream, root: TypeTernary, parent: TypeTernary): owned Dummy =
  result = new(Dummy)
  let root = if root == nil: cast[TypeTernary](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let value = readU1(io)
  result.value = value


proc fromFile*(_: typedesc[Dummy], filename: string): owned Dummy =
  Dummy.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var DummyObj) =
  close(x.io)

# TypeTernary
template `.`*(a: TypeTernary, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[TypeTernary], io: KaitaiStream, root: TypeTernary, parent: ref RootObj): owned TypeTernary =
  result = new(TypeTernary)
  let root = if root == nil: cast[TypeTernary](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let difWoHack = readBytes(io, int(1))
  result.difWoHack = difWoHack
  let difWithHack = readBytes(io, int(1)).processXor(3)
  result.difWithHack = difWithHack

  var isHackVal: Option[bool]
  let isHack = proc(): bool =
    if isNone(isHackVal):
      isHackVal = some(bool(true))
    get(isHackVal)
  result.isHackInst = isHack
  var difVal: Option[Dummy]
  let dif = proc(): Dummy =
    if isNone(difVal):
      difVal = some(Dummy((if not(isHack): difWoHack else: difWithHack)))
    get(difVal)
  result.difInst = dif
  var difValueVal: Option[uint8]
  let difValue = proc(): uint8 =
    if isNone(difValueVal):
      difValueVal = some(uint8(dif.value))
    get(difValueVal)
  result.difValueInst = difValue

proc fromFile*(_: typedesc[TypeTernary], filename: string): owned TypeTernary =
  TypeTernary.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var TypeTernaryObj) =
  close(x.io)

