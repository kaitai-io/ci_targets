import kaitai_struct_nim_runtime
import options

type
  ValidFailMinInt* = ref ValidFailMinIntObj
  ValidFailMinIntObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: ValidFailMinInt
    parent*: ref RootObj

### ValidFailMinInt ###
proc read*(_: typedesc[ValidFailMinInt], io: KaitaiStream, root: ValidFailMinInt, parent: ref RootObj): ValidFailMinInt =
  let this = new(ValidFailMinInt)
  let root = if root == nil: cast[ValidFailMinInt](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let foo = this.io.readU1()
  this.foo = foo
  result = this

proc fromFile*(_: typedesc[ValidFailMinInt], filename: string): ValidFailMinInt =
  ValidFailMinInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailMinIntObj) =
  close(x.io)

