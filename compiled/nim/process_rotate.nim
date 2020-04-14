import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  ProcessRotate* = ref object of KaitaiStruct
    buf1*: seq[byte]
    buf2*: seq[byte]
    key*: uint8
    buf3*: seq[byte]
    parent*: KaitaiStruct
    rawBuf1*: seq[byte]
    rawBuf2*: seq[byte]
    rawBuf3*: seq[byte]

proc read*(_: typedesc[ProcessRotate], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRotate


proc read*(_: typedesc[ProcessRotate], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): ProcessRotate =
  template this: untyped = result
  this = new(ProcessRotate)
  let root = if root == nil: cast[ProcessRotate](this) else: cast[ProcessRotate](root)
  this.io = io
  this.root = root
  this.parent = parent

  this.rawBuf1 = this.io.readBytes(int(5))
  this.buf1 = this.rawBuf1.processRotateLeft(int(3))
  this.rawBuf2 = this.io.readBytes(int(5))
  this.buf2 = this.rawBuf2.processRotateLeft(int(8 - (3)))
  this.key = this.io.readU1()
  this.rawBuf3 = this.io.readBytes(int(5))
  this.buf3 = this.rawBuf3.processRotateLeft(int(this.key))

proc fromFile*(_: typedesc[ProcessRotate], filename: string): ProcessRotate =
  ProcessRotate.read(newKaitaiFileStream(filename), nil, nil)

