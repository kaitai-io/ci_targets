import kaitai_struct_nim_runtime

type
  ValidFailMinInt* = ref ValidFailMinIntObj
  ValidFailMinIntObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: ValidFailMinInt
    parent*: ref RootObj

### ValidFailMinInt ###
proc read*(_: typedesc[ValidFailMinInt], io: KaitaiStream, root: ValidFailMinInt, parent: ref RootObj): ValidFailMinInt =
  result = new(ValidFailMinInt)
  let root = if root == nil: cast[ValidFailMinInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.foo = result.io.readU1()

proc fromFile*(_: typedesc[ValidFailMinInt], filename: string): ValidFailMinInt =
  ValidFailMinInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailMinIntObj) =
  close(x.io)

