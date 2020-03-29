import kaitai_struct_nim_runtime

type
  Debug0* = ref Debug0Obj
  Debug0Obj* = object
    one*: uint8
    arrayOfInts*: seq[uint8]
    unnamed2*: uint8
    io*: KaitaiStream
    root*: Debug0
    parent*: ref RootObj

### Debug0 ###
proc read*(_: typedesc[Debug0], io: KaitaiStream, root: Debug0, parent: ref RootObj): Debug0 =
  result = new(Debug0)
  let root = if root == nil: cast[Debug0](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = io.readU1()
  result.one = one
  arrayOfInts = newSeq[uint8](3)
  for i in 0 ..< 3:
    arrayOfInts.add(io.readU1())
  let unnamed2 = io.readU1()
  result.unnamed2 = unnamed2

proc fromFile*(_: typedesc[Debug0], filename: string): Debug0 =
  Debug0.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var Debug0Obj) =
  close(x.io)

