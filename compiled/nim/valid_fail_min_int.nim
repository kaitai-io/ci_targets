import ../runtime/nim/kaitai_struct_nim_runtime



type
  ValidFailMinInt* = ref ValidFailMinIntObj
  ValidFailMinIntObj* = object
    io: KaitaiStream
    root*: ValidFailMinInt
    parent*: ref RootObj
    foo*: uint8

# ValidFailMinInt
proc read*(_: typedesc[ValidFailMinInt], io: KaitaiStream, root: ValidFailMinInt, parent: ref RootObj): owned ValidFailMinInt =
  result = new(ValidFailMinInt)
  let root = if root == nil: cast[ValidFailMinInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let foo = readU1(io)
  result.foo = foo


proc fromFile*(_: typedesc[ValidFailMinInt], filename: string): owned ValidFailMinInt =
  ValidFailMinInt.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailMinIntObj) =
  close(x.io)

