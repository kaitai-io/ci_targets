import kaitai_struct_nim_runtime
import options

type
  EofExceptionU4* = ref EofExceptionU4Obj
  EofExceptionU4Obj* = object
    prebuf*: string
    failInt*: uint32
    io*: KaitaiStream
    root*: EofExceptionU4
    parent*: ref RootObj

### EofExceptionU4 ###
proc read*(_: typedesc[EofExceptionU4], io: KaitaiStream, root: EofExceptionU4, parent: ref RootObj): EofExceptionU4 =
  let this = new(EofExceptionU4)
  let root = if root == nil: cast[EofExceptionU4](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let prebuf = this.io.readBytes(int(9))
  this.prebuf = prebuf
  let failInt = this.io.readU4le()
  this.failInt = failInt
  result = this

proc fromFile*(_: typedesc[EofExceptionU4], filename: string): EofExceptionU4 =
  EofExceptionU4.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var EofExceptionU4Obj) =
  close(x.io)

