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

## ImportsAbsRel
proc read*(_: typedesc[ImportsAbsRel], io: KaitaiStream, root: ImportsAbsRel, parent: ref RootObj): ImportsAbsRel =
  let this = new(ImportsAbsRel)
  let root = if root == nil: cast[ImportsAbsRel](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU1()
  this.two = ImportedAndRel.read(this.io)
  result = this

proc fromFile*(_: typedesc[ImportsAbsRel], filename: string): ImportsAbsRel =
  ImportsAbsRel.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsAbsRelObj) =
  close(x.io)

