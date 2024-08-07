import kaitai_struct_nim_runtime
import options

type
  ValidFailRepeatEqInt* = ref object of KaitaiStruct
    `foo`*: seq[uint32]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidFailRepeatEqInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRepeatEqInt


proc read*(_: typedesc[ValidFailRepeatEqInt], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRepeatEqInt =
  template this: untyped = result
  this = new(ValidFailRepeatEqInt)
  let root = if root == nil: cast[ValidFailRepeatEqInt](this) else: cast[ValidFailRepeatEqInt](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readU4be()
      this.foo.add(it)
      inc i

proc fromFile*(_: typedesc[ValidFailRepeatEqInt], filename: string): ValidFailRepeatEqInt =
  ValidFailRepeatEqInt.read(newKaitaiFileStream(filename), nil, nil)

