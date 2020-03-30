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

## ProcessRotate
proc read*(_: typedesc[ProcessRotate], io: KaitaiStream, root: ProcessRotate, parent: ref RootObj): ProcessRotate =
  let this = new(ProcessRotate)
  let root = if root == nil: cast[ProcessRotate](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBuf1 = this.io.readBytes(int(5))
  this.buf1 = rawBuf1.processRotateLeft(3, 1)
  this.rawBuf2 = this.io.readBytes(int(5))
  this.buf2 = rawBuf2.processRotateLeft(8 - (3), 1)
  this.key = this.io.readU1()
  this.rawBuf3 = this.io.readBytes(int(5))
  this.buf3 = rawBuf3.processRotateLeft(this.key, 1)
  result = this

proc fromFile*(_: typedesc[ProcessRotate], filename: string): ProcessRotate =
  ProcessRotate.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRotateObj) =
  close(x.io)

