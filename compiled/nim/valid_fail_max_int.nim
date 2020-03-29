import kaitai_struct_nim_runtime

type
  ValidFailMaxInt* = ref ValidFailMaxIntObj
  ValidFailMaxIntObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: ValidFailMaxInt
    parent*: ref RootObj

### ValidFailMaxInt ###
proc read*(_: typedesc[ValidFailMaxInt], io: KaitaiStream, root: ValidFailMaxInt, parent: ref RootObj): ValidFailMaxInt =
  result = new(ValidFailMaxInt)
  let root = if root == nil: cast[ValidFailMaxInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let foo = io.readU1()
  result.foo = foo

proc fromFile*(_: typedesc[ValidFailMaxInt], filename: string): ValidFailMaxInt =
  ValidFailMaxInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailMaxIntObj) =
  close(x.io)

