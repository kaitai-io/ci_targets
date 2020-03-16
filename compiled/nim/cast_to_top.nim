import ../../../runtime/nim/kaitai_struct_nim_runtime
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

  let code = readU1(io)
  result.code = code

  var headerVal: Option[CastToTop]
  let header = proc(): CastToTop =
    if isNone(headerVal):
      headerVal = CastToTop.read(io)
    get(headerVal)
  result.headerInst = header
  var headerCastedVal: Option[CastToTop]
  let headerCasted = proc(): CastToTop =
    if isNone(headerCastedVal):
      headerCastedVal = some(CastToTop(header))
    get(headerCastedVal)
  result.headerCastedInst = headerCasted

proc fromFile*(_: typedesc[CastToTop], filename: string): owned CastToTop =
  CastToTop.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var CastToTopObj) =
  close(x.io)

