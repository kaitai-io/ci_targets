import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessRotate* = ref object of KaitaiStruct
    buf1*: string
    buf2*: string
    key*: uint8
    buf3*: string
    parent*: KaitaiStruct
    rawBuf1*: string
    rawBuf2*: string
    rawBuf3*: string

proc read*(_: typedesc[ProcessRotate], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRotate


proc read*(_: typedesc[ProcessRotate], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRotate =
  template this: untyped = result
  this = new(ProcessRotate)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
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

proc fromFile*(_: typedesc[ProcessRotate], filename: string): ProcessRotate =
  ProcessRotate.read(newKaitaiFileStream(filename), nil, nil)

