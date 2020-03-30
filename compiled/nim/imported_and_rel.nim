import kaitai_struct_nim_runtime
import options

type
  ImportedAndRel* = ref ImportedAndRelObj
  ImportedAndRelObj* = object
    one*: uint8
    two*: ImportedRoot
    io*: KaitaiStream
    root*: ImportedAndRel
    parent*: ref RootObj

### ImportedAndRel ###
proc read*(_: typedesc[ImportedAndRel], io: KaitaiStream, root: ImportedAndRel, parent: ref RootObj): ImportedAndRel =
  let this = new(ImportedAndRel)
  let root = if root == nil: cast[ImportedAndRel](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readU1()
  this.one = one
  let two = ImportedRoot.read(this.io)
  this.two = two
  result = this

proc fromFile*(_: typedesc[ImportedAndRel], filename: string): ImportedAndRel =
  ImportedAndRel.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportedAndRelObj) =
  close(x.io)

