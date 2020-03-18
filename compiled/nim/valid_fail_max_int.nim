import kaitai_struct_nim_runtime



type
  ValidFailMaxInt* = ref ValidFailMaxIntObj
  ValidFailMaxIntObj* = object
    io: KaitaiStream
    root*: ValidFailMaxInt
    parent*: ref RootObj
    foo*: uint8

# ValidFailMaxInt
proc read*(_: typedesc[ValidFailMaxInt], io: KaitaiStream, root: ValidFailMaxInt, parent: ref RootObj): owned ValidFailMaxInt =
  result = new(ValidFailMaxInt)
  let root = if root == nil: cast[ValidFailMaxInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let foo = readU1(io)
  result.foo = foo


proc fromFile*(_: typedesc[ValidFailMaxInt], filename: string): owned ValidFailMaxInt =
  ValidFailMaxInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailMaxIntObj) =
  close(x.io)

