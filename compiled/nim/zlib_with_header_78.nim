import ../../runtime/nim/kaitai



type
  ZlibWithHeader78* = ref ZlibWithHeader78Obj
  ZlibWithHeader78Obj* = object
    io: KaitaiStream
    root*: ZlibWithHeader78
    parent*: ref RootObj
    data*: seq[byte]

# ZlibWithHeader78
proc read*(_: typedesc[ZlibWithHeader78], io: KaitaiStream, root: ZlibWithHeader78, parent: ref RootObj): owned ZlibWithHeader78 =
  result = new(ZlibWithHeader78)
  let root = if root == nil: cast[ZlibWithHeader78](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.data = readBytesFull(io)


proc fromFile*(_: typedesc[ZlibWithHeader78], filename: string): owned ZlibWithHeader78 =
  ZlibWithHeader78.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ZlibWithHeader78Obj) =
  close(x.io)

