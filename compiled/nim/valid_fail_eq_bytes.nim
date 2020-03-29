import kaitai_struct_nim_runtime

type
  ValidFailEqBytes* = ref ValidFailEqBytesObj
  ValidFailEqBytesObj* = object
    foo*: string
    io*: KaitaiStream
    root*: ValidFailEqBytes
    parent*: ref RootObj

### ValidFailEqBytes ###
proc read*(_: typedesc[ValidFailEqBytes], io: KaitaiStream, root: ValidFailEqBytes, parent: ref RootObj): ValidFailEqBytes =
  result = new(ValidFailEqBytes)
  let root = if root == nil: cast[ValidFailEqBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let foo = io.readBytes(int(2))
  result.foo = foo

proc fromFile*(_: typedesc[ValidFailEqBytes], filename: string): ValidFailEqBytes =
  ValidFailEqBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailEqBytesObj) =
  close(x.io)

