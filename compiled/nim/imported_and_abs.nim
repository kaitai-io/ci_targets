import kaitai_struct_nim_runtime
import options

type
  ImportedAndAbs* = ref ImportedAndAbsObj
  ImportedAndAbsObj* = object
    one*: uint8
    two*: ImportedRoot
    io*: KaitaiStream
    root*: ImportedAndAbs
    parent*: ref RootObj

### ImportedAndAbs ###
proc read*(_: typedesc[ImportedAndAbs], io: KaitaiStream, root: ImportedAndAbs, parent: ref RootObj): ImportedAndAbs =
  let this = new(ImportedAndAbs)
  let root = if root == nil: cast[ImportedAndAbs](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readU1()
  this.one = one
  let two = ImportedRoot.read(this.io)
  this.two = two
  result = this

proc fromFile*(_: typedesc[ImportedAndAbs], filename: string): ImportedAndAbs =
  ImportedAndAbs.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportedAndAbsObj) =
  close(x.io)

