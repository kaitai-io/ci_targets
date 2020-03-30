import kaitai_struct_nim_runtime
import options

type
  ImportsRel1* = ref ImportsRel1Obj
  ImportsRel1Obj* = object
    one*: uint8
    two*: Imported1
    io*: KaitaiStream
    root*: ImportsRel1
    parent*: ref RootObj

## ImportsRel1
proc read*(_: typedesc[ImportsRel1], io: KaitaiStream, root: ImportsRel1, parent: ref RootObj): ImportsRel1 =
  let this = new(ImportsRel1)
  let root = if root == nil: cast[ImportsRel1](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU1()
  this.two = Imported1.read(this.io)
  result = this

proc fromFile*(_: typedesc[ImportsRel1], filename: string): ImportsRel1 =
  ImportsRel1.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsRel1Obj) =
  close(x.io)

