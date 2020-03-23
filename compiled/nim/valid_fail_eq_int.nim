import kaitai_struct_nim_runtime

type
  ValidFailEqInt* = ref ValidFailEqIntObj
  ValidFailEqIntObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: ValidFailEqInt
    parent*: ref RootObj

### ValidFailEqInt ###
proc read*(_: typedesc[ValidFailEqInt], io: KaitaiStream, root: ValidFailEqInt, parent: ref RootObj): ValidFailEqInt =
  result = new(ValidFailEqInt)
  let root = if root == nil: cast[ValidFailEqInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.foo = result.io.readU1()

proc fromFile*(_: typedesc[ValidFailEqInt], filename: string): ValidFailEqInt =
  ValidFailEqInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailEqIntObj) =
  close(x.io)

