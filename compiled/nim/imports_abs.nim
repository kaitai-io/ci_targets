import kaitai_struct_nim_runtime
import options

type
  ImportsAbs* = ref ImportsAbsObj
  ImportsAbsObj* = object
    len*: VlqBase128Le
    body*: string
    io*: KaitaiStream
    root*: ImportsAbs
    parent*: ref RootObj

### ImportsAbs ###
proc read*(_: typedesc[ImportsAbs], io: KaitaiStream, root: ImportsAbs, parent: ref RootObj): ImportsAbs =
  let this = new(ImportsAbs)
  let root = if root == nil: cast[ImportsAbs](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let len = VlqBase128Le.read(this.io)
  this.len = len
  let body = this.io.readBytes(int(this.len.this.value))
  this.body = body
  result = this

proc fromFile*(_: typedesc[ImportsAbs], filename: string): ImportsAbs =
  ImportsAbs.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsAbsObj) =
  close(x.io)

