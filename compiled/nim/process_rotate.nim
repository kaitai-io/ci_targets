import kaitai_struct_nim_runtime

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
  result = new(ProcessRotate)
  let root = if root == nil: cast[ProcessRotate](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  result.rawBuf1 = result.io.readBytes(5)
  result.buf1 = rawBuf1.processRotateLeft(3, 1)
  result.rawBuf2 = result.io.readBytes(5)
  result.buf2 = rawBuf2.processRotateLeft(8 - (3), 1)
  result.key = result.io.readU1()
  result.rawBuf3 = result.io.readBytes(5)
  result.buf3 = rawBuf3.processRotateLeft(key, 1)

proc fromFile*(_: typedesc[ProcessRotate], filename: string): ProcessRotate =
  ProcessRotate.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRotateObj) =
  close(x.io)

