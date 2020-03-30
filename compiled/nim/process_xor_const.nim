import kaitai_struct_nim_runtime
import options

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
  let this = new(ProcessXorConst)
  let root = if root == nil: cast[ProcessXorConst](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let key = this.io.readU1()
  this.key = key
  let rawBuf = this.io.readBytesFull()
  this.rawBuf = rawBuf
  let buf = rawBuf.processXor(255)
  this.buf = buf
  result = this

proc fromFile*(_: typedesc[ProcessXorConst], filename: string): ProcessXorConst =
  ProcessXorConst.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXorConstObj) =
  close(x.io)

