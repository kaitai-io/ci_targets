import kaitai_struct_nim_runtime
import options

type
  FixedContents* = ref FixedContentsObj
  FixedContentsObj* = object
    normal*: string
    highBit8*: string
    io*: KaitaiStream
    root*: FixedContents
    parent*: ref RootObj

## FixedContents
proc read*(_: typedesc[FixedContents], io: KaitaiStream, root: FixedContents, parent: ref RootObj): FixedContents =
  let this = new(FixedContents)
  let root = if root == nil: cast[FixedContents](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.normal = this.io.readBytes(int(6))
  this.highBit8 = this.io.readBytes(int(2))
  result = this

proc fromFile*(_: typedesc[FixedContents], filename: string): FixedContents =
  FixedContents.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var FixedContentsObj) =
  close(x.io)

