import kaitai_struct_nim_runtime
import options

type
  ImportsCircularA* = ref ImportsCircularAObj
  ImportsCircularAObj* = object
    code*: uint8
    two*: ImportsCircularB
    io*: KaitaiStream
    root*: ImportsCircularA
    parent*: ref RootObj

## ImportsCircularA
proc read*(_: typedesc[ImportsCircularA], io: KaitaiStream, root: ImportsCircularA, parent: ref RootObj): ImportsCircularA =
  let this = new(ImportsCircularA)
  let root = if root == nil: cast[ImportsCircularA](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.code = this.io.readU1()
  this.two = ImportsCircularB.read(this.io)
  result = this

proc fromFile*(_: typedesc[ImportsCircularA], filename: string): ImportsCircularA =
  ImportsCircularA.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsCircularAObj) =
  close(x.io)

