import kaitai_struct_nim_runtime

type
  RecursiveOne_Fini* = ref RecursiveOne_FiniObj
  RecursiveOne_FiniObj* = object
    finisher*: uint16
    io*: KaitaiStream
    root*: RecursiveOne
    parent*: RecursiveOne
  RecursiveOne* = ref RecursiveOneObj
  RecursiveOneObj* = object
    one*: uint8
    next*: ref RootObj
    io*: KaitaiStream
    root*: RecursiveOne
    parent*: ref RootObj

### RecursiveOne_Fini ###
proc read*(_: typedesc[RecursiveOne_Fini], io: KaitaiStream, root: RecursiveOne, parent: RecursiveOne): RecursiveOne_Fini =
  result = new(RecursiveOne_Fini)
  let root = if root == nil: cast[RecursiveOne](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let finisher = io.readU2le()
  result.finisher = finisher

proc fromFile*(_: typedesc[RecursiveOne_Fini], filename: string): RecursiveOne_Fini =
  RecursiveOne_Fini.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RecursiveOne_FiniObj) =
  close(x.io)

### RecursiveOne ###
proc read*(_: typedesc[RecursiveOne], io: KaitaiStream, root: RecursiveOne, parent: ref RootObj): RecursiveOne =
  result = new(RecursiveOne)
  let root = if root == nil: cast[RecursiveOne](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = io.readU1()
  result.one = one
  let next = RecursiveOne.read(io)
  result.next = next
  let next = RecursiveOne.read(io)
  result.next = next
  let next = RecursiveOne.read(io)
  result.next = next
  let next = RecursiveOne_Fini.read(io, result, root)
  result.next = next

proc fromFile*(_: typedesc[RecursiveOne], filename: string): RecursiveOne =
  RecursiveOne.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RecursiveOneObj) =
  close(x.io)

