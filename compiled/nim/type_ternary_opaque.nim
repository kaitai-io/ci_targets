import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  TypeTernaryOpaque* = ref TypeTernaryOpaqueObj
  TypeTernaryOpaqueObj* = object
    io: KaitaiStream
    root*: TypeTernaryOpaque
    parent*: ref RootObj
    difWoHack*: TermStrz
    difWithHack*: TermStrz
    isHackInst: proc(): bool
    difInst: proc(): TermStrz

# TypeTernaryOpaque
template `.`*(a: TypeTernaryOpaque, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[TypeTernaryOpaque], io: KaitaiStream, root: TypeTernaryOpaque, parent: ref RootObj): owned TypeTernaryOpaque =
  result = new(TypeTernaryOpaque)
  let root = if root == nil: cast[TypeTernaryOpaque](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.difWoHack = TermStrz.read(io)
  result.difWithHack = TermStrz.read(io)

  let shadow = result
  var isHack: Option[bool]
  result.isHackInst = proc(): bool =
    if isNone(isHack):
      isHack = some(bool(false))
    get(isHack)
  var dif: Option[TermStrz]
  result.difInst = proc(): TermStrz =
    if isNone(dif):
      dif = some(TermStrz((if not(shadow.isHack): shadow.difWoHack else: shadow.difWithHack)))
    get(dif)

proc fromFile*(_: typedesc[TypeTernaryOpaque], filename: string): owned TypeTernaryOpaque =
  TypeTernaryOpaque.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var TypeTernaryOpaqueObj) =
  close(x.io)

