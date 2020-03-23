import kaitai_struct_nim_runtime

type
  ProcessXor4Value* = ref ProcessXor4ValueObj
  ProcessXor4ValueObj* = object
    key*: string
    buf*: string
    io*: KaitaiStream
    root*: ProcessXor4Value
    parent*: ref RootObj
    rawBuf*: string

### ProcessXor4Value ###
proc read*(_: typedesc[ProcessXor4Value], io: KaitaiStream, root: ProcessXor4Value, parent: ref RootObj): ProcessXor4Value =
  result = new(ProcessXor4Value)
  let root = if root == nil: cast[ProcessXor4Value](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.key = result.io.readBytes(4)
  result.rawBuf = result.io.readBytesFull()
  result.buf = rawBuf.processXor(key)

proc fromFile*(_: typedesc[ProcessXor4Value], filename: string): ProcessXor4Value =
  ProcessXor4Value.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXor4ValueObj) =
  close(x.io)

