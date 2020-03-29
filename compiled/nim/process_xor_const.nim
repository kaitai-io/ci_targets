import kaitai_struct_nim_runtime

type
  ProcessXorConst* = ref ProcessXorConstObj
  ProcessXorConstObj* = object
    key*: uint8
    buf*: string
    io*: KaitaiStream
    root*: ProcessXorConst
    parent*: ref RootObj
    rawBuf*: string

### ProcessXorConst ###
proc read*(_: typedesc[ProcessXorConst], io: KaitaiStream, root: ProcessXorConst, parent: ref RootObj): ProcessXorConst =
  result = new(ProcessXorConst)
  let root = if root == nil: cast[ProcessXorConst](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let key = io.readU1()
  result.key = key
  let rawBuf = io.readBytesFull()
  result.rawBuf = rawBuf
  let buf = rawBuf.processXor(255)
  result.buf = buf

proc fromFile*(_: typedesc[ProcessXorConst], filename: string): ProcessXorConst =
  ProcessXorConst.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXorConstObj) =
  close(x.io)

