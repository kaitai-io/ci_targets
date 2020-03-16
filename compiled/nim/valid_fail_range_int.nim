import ../../kaitai_struct_nim_runtime/kaitai_struct_nim_runtime



type
  ValidFailRangeInt* = ref ValidFailRangeIntObj
  ValidFailRangeIntObj* = object
    io: KaitaiStream
    root*: ValidFailRangeInt
    parent*: ref RootObj
    foo*: uint8

# ValidFailRangeInt
proc read*(_: typedesc[ValidFailRangeInt], io: KaitaiStream, root: ValidFailRangeInt, parent: ref RootObj): owned ValidFailRangeInt =
  result = new(ValidFailRangeInt)
  let root = if root == nil: cast[ValidFailRangeInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let foo = readU1(io)
  result.foo = foo


proc fromFile*(_: typedesc[ValidFailRangeInt], filename: string): owned ValidFailRangeInt =
  ValidFailRangeInt.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailRangeIntObj) =
  close(x.io)

