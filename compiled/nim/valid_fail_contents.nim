import kaitai_struct_nim_runtime
import options

type
  ValidFailContents* = ref ValidFailContentsObj
  ValidFailContentsObj* = object
    foo*: string
    io*: KaitaiStream
    root*: ValidFailContents
    parent*: ref RootObj

## ValidFailContents
proc read*(_: typedesc[ValidFailContents], io: KaitaiStream, root: ValidFailContents, parent: ref RootObj): ValidFailContents =
  let this = new(ValidFailContents)
  let root = if root == nil: cast[ValidFailContents](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readBytes(int(2))
  result = this

proc fromFile*(_: typedesc[ValidFailContents], filename: string): ValidFailContents =
  ValidFailContents.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailContentsObj) =
  close(x.io)

