import kaitai_struct_nim_runtime
import options

type
  EofExceptionU4* = ref object of KaitaiStruct
    prebuf*: string
    failInt*: uint32
    parent*: KaitaiStruct

proc read*(_: typedesc[EofExceptionU4], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): EofExceptionU4 =
  template this: untyped = result
  this = new(EofExceptionU4)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent


  ##[
  ]##
  this.prebuf = this.io.readBytes(int(9))

  ##[
  ]##
  this.failInt = this.io.readU4le()

proc fromFile*(_: typedesc[EofExceptionU4], filename: string): EofExceptionU4 =
  EofExceptionU4.read(newKaitaiFileStream(filename), nil, nil)

