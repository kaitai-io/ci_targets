import kaitai_struct_nim_runtime

type
  RecursiveOnefini* = ref RecursiveOnefiniObj
  RecursiveOnefiniObj* = object
    one*: uint8
    next*: ref RootObj
    io*: KaitaiStream
    root*: RecursiveOne
    parent*: ref RootObj
  RecursiveOne* = ref RecursiveOneObj
  RecursiveOneObj* = object
    one*: uint8
    next*: ref RootObj
    io*: KaitaiStream
    root*: RecursiveOne
    parent*: ref RootObj

### RecursiveOnefini ###
proc read*(_: typedesc[RecursiveOnefini], io: KaitaiStream, root: RecursiveOne, parent: RecursiveOne): RecursiveOnefini =
  result = new(RecursiveOnefini)
  let root = if root == nil: cast[RecursiveOne](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.finisher = result.io.readU2le()

proc fromFile*(_: typedesc[RecursiveOnefini], filename: string): RecursiveOnefini =
  RecursiveOnefini.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RecursiveOnefiniObj) =
  close(x.io)

### RecursiveOne ###
proc read*(_: typedesc[RecursiveOne], io: KaitaiStream, root: RecursiveOne, parent: ref RootObj): RecursiveOne =
  result = new(RecursiveOne)
  let root = if root == nil: cast[RecursiveOne](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.one = result.io.readU1()
  result.next = RecursiveOne.read(result.io)
  result.next = RecursiveOne.read(result.io)
  result.next = RecursiveOne.read(result.io)
  result.next = Fini.read(result.io, result, root)

proc fromFile*(_: typedesc[RecursiveOne], filename: string): RecursiveOne =
  RecursiveOne.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var RecursiveOneObj) =
  close(x.io)

