import ../../runtime/nim/kaitai



type
  ValidFailEqInt* = ref ValidFailEqIntObj
  ValidFailEqIntObj* = object
    io: KaitaiStream
    root*: ValidFailEqInt
    parent*: ref RootObj
    foo*: uint8

# ValidFailEqInt
proc read*(_: typedesc[ValidFailEqInt], io: KaitaiStream, root: ValidFailEqInt, parent: ref RootObj): owned ValidFailEqInt =
  result = new(ValidFailEqInt)
  let root = if root == nil: cast[ValidFailEqInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.foo = readU1(io)


proc fromFile*(_: typedesc[ValidFailEqInt], filename: string): owned ValidFailEqInt =
  ValidFailEqInt.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailEqIntObj) =
  close(x.io)

