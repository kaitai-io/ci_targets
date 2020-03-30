import kaitai_struct_nim_runtime
import options

type
  ImportedRoot* = ref ImportedRootObj
  ImportedRootObj* = object
    one*: uint8
    io*: KaitaiStream
    root*: ImportedRoot
    parent*: ref RootObj

## ImportedRoot
proc read*(_: typedesc[ImportedRoot], io: KaitaiStream, root: ImportedRoot, parent: ref RootObj): ImportedRoot =
  let this = new(ImportedRoot)
  let root = if root == nil: cast[ImportedRoot](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[ImportedRoot], filename: string): ImportedRoot =
  ImportedRoot.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportedRootObj) =
  close(x.io)

