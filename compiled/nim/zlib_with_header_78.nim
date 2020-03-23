import kaitai_struct_nim_runtime

type
  ZlibWithHeader78* = ref ZlibWithHeader78Obj
  ZlibWithHeader78Obj* = object
    data*: string
    io*: KaitaiStream
    root*: ZlibWithHeader78
    parent*: ref RootObj
    rawData*: string

### ZlibWithHeader78 ###
proc read*(_: typedesc[ZlibWithHeader78], io: KaitaiStream, root: ZlibWithHeader78, parent: ref RootObj): ZlibWithHeader78 =
  result = new(ZlibWithHeader78)
  let root = if root == nil: cast[ZlibWithHeader78](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rawData = result.io.readBytesFull()
  result.data = rawData.processZlib()

proc fromFile*(_: typedesc[ZlibWithHeader78], filename: string): ZlibWithHeader78 =
  ZlibWithHeader78.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ZlibWithHeader78Obj) =
  close(x.io)

