import kaitai_struct_nim_runtime
import options

type
  ValidFailRangeInt* = ref ValidFailRangeIntObj
  ValidFailRangeIntObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: ValidFailRangeInt
    parent*: ref RootObj

### ValidFailRangeInt ###
proc read*(_: typedesc[ValidFailRangeInt], io: KaitaiStream, root: ValidFailRangeInt, parent: ref RootObj): ValidFailRangeInt =
  let this = new(ValidFailRangeInt)
  let root = if root == nil: cast[ValidFailRangeInt](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let foo = this.io.readU1()
  this.foo = foo
  result = this

proc fromFile*(_: typedesc[ValidFailRangeInt], filename: string): ValidFailRangeInt =
  ValidFailRangeInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailRangeIntObj) =
  close(x.io)

