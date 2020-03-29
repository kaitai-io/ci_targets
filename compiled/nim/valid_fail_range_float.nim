import kaitai_struct_nim_runtime

type
  ValidFailRangeFloat* = ref ValidFailRangeFloatObj
  ValidFailRangeFloatObj* = object
    foo*: float32
    io*: KaitaiStream
    root*: ValidFailRangeFloat
    parent*: ref RootObj

### ValidFailRangeFloat ###
proc read*(_: typedesc[ValidFailRangeFloat], io: KaitaiStream, root: ValidFailRangeFloat, parent: ref RootObj): ValidFailRangeFloat =
  result = new(ValidFailRangeFloat)
  let root = if root == nil: cast[ValidFailRangeFloat](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let foo = io.readF4le()
  result.foo = foo

proc fromFile*(_: typedesc[ValidFailRangeFloat], filename: string): ValidFailRangeFloat =
  ValidFailRangeFloat.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailRangeFloatObj) =
  close(x.io)

