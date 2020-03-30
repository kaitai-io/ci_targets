import kaitai_struct_nim_runtime
import options

type
  ProcessXorValue* = ref ProcessXorValueObj
  ProcessXorValueObj* = object
    key*: uint8
    buf*: string
    io*: KaitaiStream
    root*: ProcessXorValue
    parent*: ref RootObj
    rawBuf*: string

## ProcessXorValue
proc read*(_: typedesc[ProcessXorValue], io: KaitaiStream, root: ProcessXorValue, parent: ref RootObj): ProcessXorValue =
  let this = new(ProcessXorValue)
  let root = if root == nil: cast[ProcessXorValue](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.key = this.io.readU1()
  this.rawBuf = this.io.readBytesFull()
  this.buf = rawBuf.processXor(this.key)
  result = this

proc fromFile*(_: typedesc[ProcessXorValue], filename: string): ProcessXorValue =
  ProcessXorValue.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXorValueObj) =
  close(x.io)

