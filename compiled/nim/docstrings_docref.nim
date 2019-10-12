import ../../runtime/nim/kaitai
import options

{.experimental: "dotOperators".}

type
  DocstringsDocref* = ref DocstringsDocrefObj
  DocstringsDocrefObj* = object
    io: KaitaiStream
    root*: DocstringsDocref
    parent*: ref RootObj
    one*: uint8
    two*: uint8
    three*: uint8
    fooInst: proc(): bool
    parseInstInst: proc(): uint8

# DocstringsDocref
template `.`*(a: DocstringsDocref, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[DocstringsDocref], io: KaitaiStream, root: DocstringsDocref, parent: ref RootObj): owned DocstringsDocref =
  result = new(DocstringsDocref)
  let root = if root == nil: cast[DocstringsDocref](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.one = readU1(io)
  result.two = readU1(io)
  result.three = readU1(io)

  let shadow = result
  var foo: Option[bool]
  result.fooInst = proc(): bool =
    if isNone(foo):
      foo = some(bool(true))
    get(foo)
  var parseInst: Option[uint8]
  result.parseInstInst = proc(): uint8 =
    if isNone(parseInst):
      parseInst = readU1(io)
    get(parseInst)

proc fromFile*(_: typedesc[DocstringsDocref], filename: string): owned DocstringsDocref =
  DocstringsDocref.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var DocstringsDocrefObj) =
  close(x.io)

