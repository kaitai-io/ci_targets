import ../../runtime/nim/kaitai
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

  result.value = readU1(io)

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

  result.difWoHack = Dummy.read(io, root, result)
  result.difWithHack = Dummy.read(io, root, result)

proc fromFile*(_: typedesc[TypeTernary], filename: string): owned TypeTernary =
  TypeTernary.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var TypeTernaryObj) =
  close(x.io)

