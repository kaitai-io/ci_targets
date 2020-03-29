import kaitai_struct_nim_runtime

type
  ProcessXorValue* = ref ProcessXorValueObj
  ProcessXorValueObj* = object
    key*: uint8
    buf*: string
    io*: KaitaiStream
    root*: ProcessXorValue
    parent*: ref RootObj
    rawBuf*: string

### ProcessXorValue ###
proc read*(_: typedesc[ProcessXorValue], io: KaitaiStream, root: ProcessXorValue, parent: ref RootObj): ProcessXorValue =
  result = new(ProcessXorValue)
  let root = if root == nil: cast[ProcessXorValue](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let key = io.readU1()
  result.key = key
  let rawBuf = io.readBytesFull()
  result.rawBuf = rawBuf
  let buf = rawBuf.processXor(key)
  result.buf = buf

proc fromFile*(_: typedesc[ProcessXorValue], filename: string): ProcessXorValue =
  ProcessXorValue.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXorValueObj) =
  close(x.io)

