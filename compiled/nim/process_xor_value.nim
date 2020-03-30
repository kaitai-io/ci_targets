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

### ProcessXorValue ###
proc read*(_: typedesc[ProcessXorValue], io: KaitaiStream, root: ProcessXorValue, parent: ref RootObj): ProcessXorValue =
  let this = new(ProcessXorValue)
  let root = if root == nil: cast[ProcessXorValue](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let key = this.io.readU1()
  this.key = key
  let rawBuf = this.io.readBytesFull()
  this.rawBuf = rawBuf
  let buf = rawBuf.processXor(this.key)
  this.buf = buf
  result = this

proc fromFile*(_: typedesc[ProcessXorValue], filename: string): ProcessXorValue =
  ProcessXorValue.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXorValueObj) =
  close(x.io)

