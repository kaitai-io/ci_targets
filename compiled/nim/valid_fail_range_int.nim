import kaitai_struct_nim_runtime

type
  ValidFailRangeInt* = ref ValidFailRangeIntObj
  ValidFailRangeIntObj* = object
    foo*: uint8
    io*: KaitaiStream
    root*: ValidFailRangeInt
    parent*: ref RootObj

### ValidFailRangeInt ###
proc read*(_: typedesc[ValidFailRangeInt], io: KaitaiStream, root: ValidFailRangeInt, parent: ref RootObj): ValidFailRangeInt =
  result = new(ValidFailRangeInt)
  let root = if root == nil: cast[ValidFailRangeInt](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let foo = io.readU1()
  result.foo = foo

proc fromFile*(_: typedesc[ValidFailRangeInt], filename: string): ValidFailRangeInt =
  ValidFailRangeInt.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailRangeIntObj) =
  close(x.io)

