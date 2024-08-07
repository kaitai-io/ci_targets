import kaitai_struct_nim_runtime
import options

type
  ValidFailRepeatMaxInt* = ref object of KaitaiStruct
    `foo`*: seq[uint8]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidFailRepeatMaxInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRepeatMaxInt


proc read*(_: typedesc[ValidFailRepeatMaxInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRepeatMaxInt =
  template this: untyped = result
  this = new(ValidFailRepeatMaxInt)
  let root = if root == nil: cast[ValidFailRepeatMaxInt](this) else: cast[ValidFailRepeatMaxInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readU1()
      this.foo.add(it)
      inc i

proc fromFile*(_: typedesc[ValidFailRepeatMaxInt], filename: string): ValidFailRepeatMaxInt =
  ValidFailRepeatMaxInt.read(newKaitaiFileStream(filename), nil, nil)

