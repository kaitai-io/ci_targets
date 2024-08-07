import kaitai_struct_nim_runtime
import options

type
  ValidFailRepeatAnyofInt* = ref object of KaitaiStruct
    `foo`*: seq[uint8]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidFailRepeatAnyofInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRepeatAnyofInt


proc read*(_: typedesc[ValidFailRepeatAnyofInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRepeatAnyofInt =
  template this: untyped = result
  this = new(ValidFailRepeatAnyofInt)
  let root = if root == nil: cast[ValidFailRepeatAnyofInt](this) else: cast[ValidFailRepeatAnyofInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readU1()
      this.foo.add(it)
      inc i

proc fromFile*(_: typedesc[ValidFailRepeatAnyofInt], filename: string): ValidFailRepeatAnyofInt =
  ValidFailRepeatAnyofInt.read(newKaitaiFileStream(filename), nil, nil)

