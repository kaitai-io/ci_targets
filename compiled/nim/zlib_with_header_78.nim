import kaitai_struct_nim_runtime
import options

type
  ZlibWithHeader78* = ref ZlibWithHeader78Obj
  ZlibWithHeader78Obj* = object
    data*: string
    io*: KaitaiStream
    root*: ZlibWithHeader78
    parent*: ref RootObj
    rawData*: string

## ZlibWithHeader78
proc read*(_: typedesc[ZlibWithHeader78], io: KaitaiStream, root: ZlibWithHeader78, parent: ref RootObj): ZlibWithHeader78 =
  let this = new(ZlibWithHeader78)
  let root = if root == nil: cast[ZlibWithHeader78](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.rawData = this.io.readBytesFull()
  this.data = rawData.processZlib()
  result = this

proc fromFile*(_: typedesc[ZlibWithHeader78], filename: string): ZlibWithHeader78 =
  ZlibWithHeader78.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ZlibWithHeader78Obj) =
  close(x.io)

