import kaitai_struct_nim_runtime
import options

type
  ProcessXor4Value* = ref ProcessXor4ValueObj
  ProcessXor4ValueObj* = object
    key*: string
    buf*: string
    io*: KaitaiStream
    root*: ProcessXor4Value
    parent*: ref RootObj
    rawBuf*: string

## ProcessXor4Value
proc read*(_: typedesc[ProcessXor4Value], io: KaitaiStream, root: ProcessXor4Value, parent: ref RootObj): ProcessXor4Value =
  let this = new(ProcessXor4Value)
  let root = if root == nil: cast[ProcessXor4Value](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.key = this.io.readBytes(int(4))
  this.rawBuf = this.io.readBytesFull()
  this.buf = rawBuf.processXor(this.key)
  result = this

proc fromFile*(_: typedesc[ProcessXor4Value], filename: string): ProcessXor4Value =
  ProcessXor4Value.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXor4ValueObj) =
  close(x.io)

