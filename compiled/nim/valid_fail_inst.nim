import kaitai_struct_nim_runtime

type
  ValidFailInst* = ref ValidFailInstObj
  ValidFailInstObj* = object
    a*: uint8
    io*: KaitaiStream
    root*: ValidFailInst
    parent*: ref RootObj

### ValidFailInst ###
proc read*(_: typedesc[ValidFailInst], io: KaitaiStream, root: ValidFailInst, parent: ref RootObj): ValidFailInst =
  result = new(ValidFailInst)
  let root = if root == nil: cast[ValidFailInst](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  if inst >= 0:
    let a = io.readU1()
    result.a = a

proc fromFile*(_: typedesc[ValidFailInst], filename: string): ValidFailInst =
  ValidFailInst.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ValidFailInstObj) =
  close(x.io)

