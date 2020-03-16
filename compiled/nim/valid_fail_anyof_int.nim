import ../runtime/nim/kaitai_struct_nim_runtime



type
  ValidFailAnyofInt* = ref ValidFailAnyofIntObj
  ValidFailAnyofIntObj* = object
    io: KaitaiStream
    root*: ValidFailAnyofInt
    parent*: ref RootObj
    foo*: uint8

# ValidFailAnyofInt
proc read*(_: typedesc[ValidFailAnyofInt], io: KaitaiStream, root: ValidFailAnyofInt, parent: ref RootObj): owned ValidFailAnyofInt =
  result = new(ValidFailAnyofInt)
  let root = if root == nil: cast[ValidFailAnyofInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let foo = readU1(io)
  result.foo = foo


proc fromFile*(_: typedesc[ValidFailAnyofInt], filename: string): owned ValidFailAnyofInt =
  ValidFailAnyofInt.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailAnyofIntObj) =
  close(x.io)

