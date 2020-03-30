import kaitai_struct_nim_runtime
import options

type
  CastToImported* = ref CastToImportedObj
  CastToImportedObj* = object
    one*: HelloWorld
    io*: KaitaiStream
    root*: CastToImported
    parent*: ref RootObj
    oneCastedInst*: Option[HelloWorld]

## CastToImported
proc oneCasted*(this: CastToImported): HelloWorld
proc oneCasted(this: CastToImported): HelloWorld = 
  if isSome(this.oneCastedInst):
    return get(this.oneCastedInst)
  this.oneCastedInst = some(this.one)
  return get(this.oneCastedInst)

proc read*(_: typedesc[CastToImported], io: KaitaiStream, root: CastToImported, parent: ref RootObj): CastToImported =
  let this = new(CastToImported)
  let root = if root == nil: cast[CastToImported](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = HelloWorld.read(this.io)
  result = this

proc fromFile*(_: typedesc[CastToImported], filename: string): CastToImported =
  CastToImported.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastToImportedObj) =
  close(x.io)

