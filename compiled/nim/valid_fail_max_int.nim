import kaitai_struct_nim_runtime
import options

type
  ValidFailMaxInt* = ref ValidFailMaxIntObj
  ValidFailMaxIntObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: ValidFailMaxInt
    parent*: ref RootObj

## ValidFailMaxInt
proc read*(_: typedesc[ValidFailMaxInt], io: KaitaiStream, root: ValidFailMaxInt, parent: ref RootObj): ValidFailMaxInt =
  let this = new(ValidFailMaxInt)
  let root = if root == nil: cast[ValidFailMaxInt](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readU1()
  result = this

proc fromFile*(_: typedesc[ValidFailMaxInt], filename: string): ValidFailMaxInt =
  ValidFailMaxInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailMaxIntObj) =
  close(x.io)

