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

  let shadow = result
  var header: Option[CastToTop]
  result.headerInst = proc(): CastToTop =
    if isNone(header):
      header = CastToTop.read(io)
    get(header)
  var headerCasted: Option[CastToTop]
  result.headerCastedInst = proc(): CastToTop =
    if isNone(headerCasted):
      headerCasted = some(CastToTop(shadow.header))
    get(headerCasted)

proc fromFile*(_: typedesc[CastToTop], filename: string): owned CastToTop =
  CastToTop.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var CastToTopObj) =
  close(x.io)

