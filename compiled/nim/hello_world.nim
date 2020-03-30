import kaitai_struct_nim_runtime
import options

type
  HelloWorld* = ref HelloWorldObj
  HelloWorldObj* = object
    one*: uint8
    io*: KaitaiStream
    root*: HelloWorld
    parent*: ref RootObj

### HelloWorld ###
proc read*(_: typedesc[HelloWorld], io: KaitaiStream, root: HelloWorld, parent: ref RootObj): HelloWorld =
  let this = new(HelloWorld)
  let root = if root == nil: cast[HelloWorld](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readU1()
  this.one = one
  result = this

proc fromFile*(_: typedesc[HelloWorld], filename: string): HelloWorld =
  HelloWorld.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var HelloWorldObj) =
  close(x.io)

