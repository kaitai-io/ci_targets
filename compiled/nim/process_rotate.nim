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
  let rawBuf1 = io.readBytes(int(5))
  result.rawBuf1 = rawBuf1
  let buf1 = rawBuf1.processRotateLeft(3, 1)
  result.buf1 = buf1
  let rawBuf2 = io.readBytes(int(5))
  result.rawBuf2 = rawBuf2
  let buf2 = rawBuf2.processRotateLeft(8 - (3), 1)
  result.buf2 = buf2
  let key = io.readU1()
  result.key = key
  let rawBuf3 = io.readBytes(int(5))
  result.rawBuf3 = rawBuf3
  let buf3 = rawBuf3.processRotateLeft(key, 1)
  result.buf3 = buf3

proc fromFile*(_: typedesc[ProcessRotate], filename: string): ProcessRotate =
  ProcessRotate.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRotateObj) =
  close(x.io)

