import ../runtime/nim/kaitai_struct_nim_runtime
import options

{.experimental: "dotOperators".}

type
  CastToImported* = ref CastToImportedObj
  CastToImportedObj* = object
    io: KaitaiStream
    root*: CastToImported
    parent*: ref RootObj
    one*: HelloWorld
    oneCastedInst: proc(): HelloWorld

# CastToImported
template `.`*(a: CastToImported, b: untyped): untyped =
  (a.`b inst`)()

proc read*(_: typedesc[CastToImported], io: KaitaiStream, root: CastToImported, parent: ref RootObj): owned CastToImported =
  result = new(CastToImported)
  let root = if root == nil: cast[CastToImported](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let one = HelloWorld.read(io)
  result.one = one

  var oneCastedVal: Option[HelloWorld]
  let oneCasted = proc(): HelloWorld =
    if isNone(oneCastedVal):
      oneCastedVal = some(HelloWorld(one))
    get(oneCastedVal)
  result.oneCastedInst = oneCasted

proc fromFile*(_: typedesc[CastToImported], filename: string): owned CastToImported =
  CastToImported.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var CastToImportedObj) =
  close(x.io)

