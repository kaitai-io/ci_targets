import kaitai_struct_nim_runtime
import options

type
  ValidFailRepeatContents* = ref object of KaitaiStruct
    `foo`*: seq[seq[byte]]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[ValidFailRepeatContents], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRepeatContents


proc read*(_: typedesc[ValidFailRepeatContents], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ValidFailRepeatContents =
  template this: untyped = result
  this = new(ValidFailRepeatContents)
  let root = if root == nil: cast[ValidFailRepeatContents](this) else: cast[ValidFailRepeatContents](root)
  this.io = io
  this.root = root
  this.parent = parent

  block:
    var i: int
    while not this.io.isEof:
      let it = this.io.readBytes(int(4))
      this.foo.add(it)
      inc i

proc fromFile*(_: typedesc[ValidFailRepeatContents], filename: string): ValidFailRepeatContents =
  ValidFailRepeatContents.read(newKaitaiFileStream(filename), nil, nil)

