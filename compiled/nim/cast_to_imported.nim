import kaitai_struct_nim_runtime

type
  CastToImported* = ref CastToImportedObj
  CastToImportedObj* = object
    one*: HelloWorld
    io*: KaitaiStream
    root*: CastToImported
    parent*: ref RootObj

### CastToImported ###
proc read*(_: typedesc[CastToImported], io: KaitaiStream, root: CastToImported, parent: ref RootObj): CastToImported =
  result = new(CastToImported)
  let root = if root == nil: cast[CastToImported](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = HelloWorld.read(io)
  result.one = one

proc fromFile*(_: typedesc[CastToImported], filename: string): CastToImported =
  CastToImported.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var CastToImportedObj) =
  close(x.io)

