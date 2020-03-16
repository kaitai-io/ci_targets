import kaitai_struct_nim_runtime
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

  let difWoHack = readBytes(io, int(12))
  result.difWoHack = difWoHack
  let difWithHack = readBytes(io, int(12)).processXor(3)
  result.difWithHack = difWithHack

  var isHackVal: Option[bool]
  let isHack = proc(): bool =
    if isNone(isHackVal):
      isHackVal = some(bool(false))
    get(isHackVal)
  result.isHackInst = isHack
  var difVal: Option[TermStrz]
  let dif = proc(): TermStrz =
    if isNone(difVal):
      difVal = some(TermStrz((if not(isHack): difWoHack else: difWithHack)))
    get(difVal)
  result.difInst = dif

proc fromFile*(_: typedesc[TypeTernaryOpaque], filename: string): owned TypeTernaryOpaque =
  TypeTernaryOpaque.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var TypeTernaryOpaqueObj) =
  close(x.io)

