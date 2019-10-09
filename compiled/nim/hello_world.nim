import ../../runtime/nim/kaitai



type
  HelloWorld* = ref HelloWorldObj
  HelloWorldObj* = object
    io: KaitaiStream
    root*: HelloWorld
    parent*: ref RootObj
    one*: uint8

# HelloWorld
proc read*(_: typedesc[HelloWorld], io: KaitaiStream, root: HelloWorld, parent: ref RootObj): owned HelloWorld =
  result = new(HelloWorld)
  let root = if root == nil: cast[HelloWorld](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.one = readU1(io)

proc fromFile*(_: typedesc[HelloWorld], filename: string): owned HelloWorld =
  HelloWorld.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var HelloWorldObj) =
  close(x.io)

