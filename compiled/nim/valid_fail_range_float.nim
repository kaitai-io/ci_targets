import kaitai_struct_nim_runtime



type
  ValidFailRangeFloat* = ref ValidFailRangeFloatObj
  ValidFailRangeFloatObj* = object
    io: KaitaiStream
    root*: ValidFailRangeFloat
    parent*: ref RootObj
    foo*: float32

# ValidFailRangeFloat
proc read*(_: typedesc[ValidFailRangeFloat], io: KaitaiStream, root: ValidFailRangeFloat, parent: ref RootObj): owned ValidFailRangeFloat =
  result = new(ValidFailRangeFloat)
  let root = if root == nil: cast[ValidFailRangeFloat](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let foo = readF4le(io)
  result.foo = foo


proc fromFile*(_: typedesc[ValidFailRangeFloat], filename: string): owned ValidFailRangeFloat =
  ValidFailRangeFloat.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailRangeFloatObj) =
  close(x.io)

