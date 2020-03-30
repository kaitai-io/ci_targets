import kaitai_struct_nim_runtime
import options

type
  ImportsCircularB* = ref ImportsCircularBObj
  ImportsCircularBObj* = object
    initial*: uint8
    backRef*: ImportsCircularA
    io*: KaitaiStream
    root*: ImportsCircularB
    parent*: ref RootObj

## ImportsCircularB
proc read*(_: typedesc[ImportsCircularB], io: KaitaiStream, root: ImportsCircularB, parent: ref RootObj): ImportsCircularB =
  let this = new(ImportsCircularB)
  let root = if root == nil: cast[ImportsCircularB](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.initial = this.io.readU1()
  if this.initial == 65:
    this.backRef = ImportsCircularA.read(this.io)
  result = this

proc fromFile*(_: typedesc[ImportsCircularB], filename: string): ImportsCircularB =
  ImportsCircularB.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ImportsCircularBObj) =
  close(x.io)

