import kaitai_struct_nim_runtime
import options

type
  ProcessXor4Const* = ref ProcessXor4ConstObj
  ProcessXor4ConstObj* = object
    key*: string
    buf*: string
    io*: KaitaiStream
    root*: ProcessXor4Const
    parent*: ref RootObj
    rawBuf*: string

## ProcessXor4Const
proc read*(_: typedesc[ProcessXor4Const], io: KaitaiStream, root: ProcessXor4Const, parent: ref RootObj): ProcessXor4Const =
  let this = new(ProcessXor4Const)
  let root = if root == nil: cast[ProcessXor4Const](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.key = this.io.readBytes(int(4))
  this.rawBuf = this.io.readBytesFull()
  this.buf = rawBuf.processXor(@[-20, -69, -93, 20].mapIt(it.toByte).toString)
  result = this

proc fromFile*(_: typedesc[ProcessXor4Const], filename: string): ProcessXor4Const =
  ProcessXor4Const.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXor4ConstObj) =
  close(x.io)

