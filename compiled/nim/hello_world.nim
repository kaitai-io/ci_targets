import kaitai_struct_nim_runtime

type
  HelloWorld* = ref HelloWorldObj
  HelloWorldObj* = object
    one*: uint8
    io*: KaitaiStream
    root*: HelloWorld
    parent*: ref RootObj

### HelloWorld ###
proc read*(_: typedesc[HelloWorld], io: KaitaiStream, root: HelloWorld, parent: ref RootObj): HelloWorld =
  result = new(HelloWorld)
  let root = if root == nil: cast[HelloWorld](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let one = io.readU1()
  result.one = one

proc fromFile*(_: typedesc[HelloWorld], filename: string): HelloWorld =
  HelloWorld.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var HelloWorldObj) =
  close(x.io)

