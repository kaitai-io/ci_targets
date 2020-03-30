import kaitai_struct_nim_runtime
import options

type
  ImportsAbsAbs* = ref ImportsAbsAbsObj
  ImportsAbsAbsObj* = object
    one*: uint8
    two*: ImportedAndAbs
    io*: KaitaiStream
    root*: ImportsAbsAbs
    parent*: ref RootObj

## ImportsAbsAbs
proc read*(_: typedesc[ImportsAbsAbs], io: KaitaiStream, root: ImportsAbsAbs, parent: ref RootObj): ImportsAbsAbs =
  let this = new(ImportsAbsAbs)
  let root = if root == nil: cast[ImportsAbsAbs](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU1()
  this.two = ImportedAndAbs.read(this.io)
  result = this

proc fromFile*(_: typedesc[ImportsAbsAbs], filename: string): ImportsAbsAbs =
  ImportsAbsAbs.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsAbsAbsObj) =
  close(x.io)

