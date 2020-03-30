import kaitai_struct_nim_runtime
import options

type
  ProcessRotate* = ref ProcessRotateObj
  ProcessRotateObj* = object
    buf1*: string
    buf2*: string
    key*: uint8
    buf3*: string
    io*: KaitaiStream
    root*: ProcessRotate
    parent*: ref RootObj
    rawBuf1*: string
    rawBuf2*: string
    rawBuf3*: string

### ProcessRotate ###
proc read*(_: typedesc[ProcessRotate], io: KaitaiStream, root: ProcessRotate, parent: ref RootObj): ProcessRotate =
  let this = new(ProcessRotate)
  let root = if root == nil: cast[ProcessRotate](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  let rawBuf1 = this.io.readBytes(int(5))
  this.rawBuf1 = rawBuf1
  let buf1 = rawBuf1.processRotateLeft(3, 1)
  this.buf1 = buf1
  let rawBuf2 = this.io.readBytes(int(5))
  this.rawBuf2 = rawBuf2
  let buf2 = rawBuf2.processRotateLeft(8 - (3), 1)
  this.buf2 = buf2
  let key = this.io.readU1()
  this.key = key
  let rawBuf3 = this.io.readBytes(int(5))
  this.rawBuf3 = rawBuf3
  let buf3 = rawBuf3.processRotateLeft(this.key, 1)
  this.buf3 = buf3
  result = this

proc fromFile*(_: typedesc[ProcessRotate], filename: string): ProcessRotate =
  ProcessRotate.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRotateObj) =
  close(x.io)

