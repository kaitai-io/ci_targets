import kaitai_struct_nim_runtime



type
  ValidFailEqBytes* = ref ValidFailEqBytesObj
  ValidFailEqBytesObj* = object
    io: KaitaiStream
    root*: ValidFailEqBytes
    parent*: ref RootObj
    foo*: string

# ValidFailEqBytes
proc read*(_: typedesc[ValidFailEqBytes], io: KaitaiStream, root: ValidFailEqBytes, parent: ref RootObj): owned ValidFailEqBytes =
  result = new(ValidFailEqBytes)
  let root = if root == nil: cast[ValidFailEqBytes](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let foo = readBytes(io, int(2))
  result.foo = foo


proc fromFile*(_: typedesc[ValidFailEqBytes], filename: string): owned ValidFailEqBytes =
  ValidFailEqBytes.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailEqBytesObj) =
  close(x.io)

