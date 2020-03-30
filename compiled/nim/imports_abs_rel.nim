import kaitai_struct_nim_runtime
import options

type
  ImportsAbsRel* = ref ImportsAbsRelObj
  ImportsAbsRelObj* = object
    one*: uint8
    two*: ImportedAndRel
    io*: KaitaiStream
    root*: ImportsAbsRel
    parent*: ref RootObj

### ImportsAbsRel ###
proc read*(_: typedesc[ImportsAbsRel], io: KaitaiStream, root: ImportsAbsRel, parent: ref RootObj): ImportsAbsRel =
  let this = new(ImportsAbsRel)
  let root = if root == nil: cast[ImportsAbsRel](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readU1()
  this.one = one
  let two = ImportedAndRel.read(this.io)
  this.two = two
  result = this

proc fromFile*(_: typedesc[ImportsAbsRel], filename: string): ImportsAbsRel =
  ImportsAbsRel.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsAbsRelObj) =
  close(x.io)

