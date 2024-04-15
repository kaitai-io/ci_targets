import kaitai_struct_nim_runtime
import options
import hello_world
import cast_to_imported

type
  ImportsCastToImported* = ref object of KaitaiStruct
    `hw`*: HelloWorld
    `two`*: CastToImported
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ImportsCastToImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsCastToImported


proc read*(_: typedesc[ImportsCastToImported], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ImportsCastToImported =
  template this: untyped = result
  this = new(ImportsCastToImported)
  let root = if root == nil: cast[ImportsCastToImported](this) else: cast[ImportsCastToImported](root)
  this.io = io
  this.root = root
  this.parent = parent

  let hwExpr = HelloWorld.read(this.io, nil, nil)
  this.hw = hwExpr
  let twoExpr = CastToImported.read(this.io, nil, nil, this.hw)
  this.two = twoExpr

proc fromFile*(_: typedesc[ImportsCastToImported], filename: string): ImportsCastToImported =
  ImportsCastToImported.read(newKaitaiFileStream(filename), nil, nil)

