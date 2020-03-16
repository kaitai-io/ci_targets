import ../../kaitai_struct_nim_runtime/kaitai_struct_nim_runtime
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

  let one = readU1(io)
  result.one = one
  let two = readU1(io)
  result.two = two
  let three = readU1(io)
  result.three = three

  var fooVal: Option[bool]
  let foo = proc(): bool =
    if isNone(fooVal):
      fooVal = some(bool(true))
    get(fooVal)
  result.fooInst = foo
  var parseInstVal: Option[uint8]
  let parseInst = proc(): uint8 =
    if isNone(parseInstVal):
      parseInstVal = readU1(io)
    get(parseInstVal)
  result.parseInstInst = parseInst

proc fromFile*(_: typedesc[DocstringsDocref], filename: string): owned DocstringsDocref =
  DocstringsDocref.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var DocstringsDocrefObj) =
  close(x.io)

