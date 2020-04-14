import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  HelloWorld* = ref object of KaitaiStruct
    one*: uint8
    parent*: KaitaiStruct

proc read*(_: typedesc[HelloWorld], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): HelloWorld


proc read*(_: typedesc[HelloWorld], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): HelloWorld =
  template this: untyped = result
  this = new(HelloWorld)
  let root = if root == nil: cast[HelloWorld](this) else: cast[HelloWorld](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.one = this.io.readU1()

proc fromFile*(_: typedesc[HelloWorld], filename: string): HelloWorld =
  HelloWorld.read(newKaitaiFileStream(filename), nil, nil)

