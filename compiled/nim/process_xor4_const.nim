import kaitai_struct_nim_runtime

type
  ProcessXor4Const* = ref ProcessXor4ConstObj
  ProcessXor4ConstObj* = object
    key*: string
    buf*: string
    io*: KaitaiStream
    root*: ProcessXor4Const
    parent*: ref RootObj
    rawBuf*: string

### ProcessXor4Const ###
proc read*(_: typedesc[ProcessXor4Const], io: KaitaiStream, root: ProcessXor4Const, parent: ref RootObj): ProcessXor4Const =
  result = new(ProcessXor4Const)
  let root = if root == nil: cast[ProcessXor4Const](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.key = result.io.readBytes(4)
  result.rawBuf = result.io.readBytesFull()
  result.buf = rawBuf.processXor(@[-20, -69, -93, 20].mapIt(it.toByte).toString)

proc fromFile*(_: typedesc[ProcessXor4Const], filename: string): ProcessXor4Const =
  ProcessXor4Const.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXor4ConstObj) =
  close(x.io)

