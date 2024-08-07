import kaitai_struct_nim_runtime
import options

type
  ValidFailRepeatMinInt* = ref object of KaitaiStruct
    `foo`*: seq[int8]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidFailRepeatMinInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRepeatMinInt


proc read*(_: typedesc[ValidFailRepeatMinInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRepeatMinInt =
  template this: untyped = result
  this = new(ValidFailRepeatMinInt)
  let root = if root == nil: cast[ValidFailRepeatMinInt](this) else: cast[ValidFailRepeatMinInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readS1()
      this.foo.add(it)
      inc i

proc fromFile*(_: typedesc[ValidFailRepeatMinInt], filename: string): ValidFailRepeatMinInt =
  ValidFailRepeatMinInt.read(newKaitaiFileStream(filename), nil, nil)

