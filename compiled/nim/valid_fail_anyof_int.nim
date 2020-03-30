import kaitai_struct_nim_runtime
import options

type
  ValidFailAnyofInt* = ref ValidFailAnyofIntObj
  ValidFailAnyofIntObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: ValidFailAnyofInt
    parent*: ref RootObj

### ValidFailAnyofInt ###
proc read*(_: typedesc[ValidFailAnyofInt], io: KaitaiStream, root: ValidFailAnyofInt, parent: ref RootObj): ValidFailAnyofInt =
  let this = new(ValidFailAnyofInt)
  let root = if root == nil: cast[ValidFailAnyofInt](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let foo = this.io.readU1()
  this.foo = foo
  result = this

proc fromFile*(_: typedesc[ValidFailAnyofInt], filename: string): ValidFailAnyofInt =
  ValidFailAnyofInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailAnyofIntObj) =
  close(x.io)

