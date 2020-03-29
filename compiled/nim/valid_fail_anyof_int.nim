import kaitai_struct_nim_runtime

type
  ValidFailAnyofInt* = ref ValidFailAnyofIntObj
  ValidFailAnyofIntObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: ValidFailAnyofInt
    parent*: ref RootObj

### ValidFailAnyofInt ###
proc read*(_: typedesc[ValidFailAnyofInt], io: KaitaiStream, root: ValidFailAnyofInt, parent: ref RootObj): ValidFailAnyofInt =
  result = new(ValidFailAnyofInt)
  let root = if root == nil: cast[ValidFailAnyofInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let foo = io.readU1()
  result.foo = foo

proc fromFile*(_: typedesc[ValidFailAnyofInt], filename: string): ValidFailAnyofInt =
  ValidFailAnyofInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailAnyofIntObj) =
  close(x.io)

