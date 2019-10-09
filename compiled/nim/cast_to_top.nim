import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  CastToTop* = ref CastToTopObj
  CastToTopObj* = object
    io: KaitaiStream
    root*: CastToTop
    parent*: ref RootObj
    code*: uint8
    headerInst: proc(): CastToTop
    headerCastedInst: proc(): CastToTop

# CastToTop
template `.`*(a: CastToTop, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[CastToTop], io: KaitaiStream, root: CastToTop, parent: ref RootObj): owned CastToTop =
  result = new(CastToTop)
  let root = if root == nil: cast[CastToTop](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.code = readU1(io)

proc fromFile*(_: typedesc[CastToTop], filename: string): owned CastToTop =
  CastToTop.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var CastToTopObj) =
  close(x.io)

