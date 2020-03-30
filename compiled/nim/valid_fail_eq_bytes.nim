import kaitai_struct_nim_runtime
import options

type
  ValidFailEqBytes* = ref ValidFailEqBytesObj
  ValidFailEqBytesObj* = object
    foo*: string
    io*: KaitaiStream
    root*: ValidFailEqBytes
    parent*: ref RootObj

### ValidFailEqBytes ###
proc read*(_: typedesc[ValidFailEqBytes], io: KaitaiStream, root: ValidFailEqBytes, parent: ref RootObj): ValidFailEqBytes =
  let this = new(ValidFailEqBytes)
  let root = if root == nil: cast[ValidFailEqBytes](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let foo = this.io.readBytes(int(2))
  this.foo = foo
  result = this

proc fromFile*(_: typedesc[ValidFailEqBytes], filename: string): ValidFailEqBytes =
  ValidFailEqBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailEqBytesObj) =
  close(x.io)

