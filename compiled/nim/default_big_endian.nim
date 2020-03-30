import kaitai_struct_nim_runtime
import options

type
  DefaultBigEndian* = ref DefaultBigEndianObj
  DefaultBigEndianObj* = object
    one*: uint32
    io*: KaitaiStream
    root*: DefaultBigEndian
    parent*: ref RootObj

### DefaultBigEndian ###
proc read*(_: typedesc[DefaultBigEndian], io: KaitaiStream, root: DefaultBigEndian, parent: ref RootObj): DefaultBigEndian =
  let this = new(DefaultBigEndian)
  let root = if root == nil: cast[DefaultBigEndian](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let one = this.io.readU4be()
  this.one = one
  result = this

proc fromFile*(_: typedesc[DefaultBigEndian], filename: string): DefaultBigEndian =
  DefaultBigEndian.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var DefaultBigEndianObj) =
  close(x.io)

