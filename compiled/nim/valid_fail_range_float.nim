import kaitai_struct_nim_runtime
import options

type
  ValidFailRangeFloat* = ref ValidFailRangeFloatObj
  ValidFailRangeFloatObj* = object
    foo*: float32
    io*: KaitaiStream
    root*: ValidFailRangeFloat
    parent*: ref RootObj

## ValidFailRangeFloat
proc read*(_: typedesc[ValidFailRangeFloat], io: KaitaiStream, root: ValidFailRangeFloat, parent: ref RootObj): ValidFailRangeFloat =
  let this = new(ValidFailRangeFloat)
  let root = if root == nil: cast[ValidFailRangeFloat](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.foo = this.io.readF4le()
  result = this

proc fromFile*(_: typedesc[ValidFailRangeFloat], filename: string): ValidFailRangeFloat =
  ValidFailRangeFloat.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailRangeFloatObj) =
  close(x.io)

