import kaitai_struct_nim_runtime
import options

type
  ValidFailEqInt* = ref ValidFailEqIntObj
  ValidFailEqIntObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: ValidFailEqInt
    parent*: ref RootObj

### ValidFailEqInt ###
proc read*(_: typedesc[ValidFailEqInt], io: KaitaiStream, root: ValidFailEqInt, parent: ref RootObj): ValidFailEqInt =
  let this = new(ValidFailEqInt)
  let root = if root == nil: cast[ValidFailEqInt](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let foo = this.io.readU1()
  this.foo = foo
  result = this

proc fromFile*(_: typedesc[ValidFailEqInt], filename: string): ValidFailEqInt =
  ValidFailEqInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailEqIntObj) =
  close(x.io)

