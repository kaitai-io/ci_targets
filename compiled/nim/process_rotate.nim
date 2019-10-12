import ../../runtime/nim/kaitai



type
  ProcessRotate* = ref ProcessRotateObj
  ProcessRotateObj* = object
    io: KaitaiStream
    root*: ProcessRotate
    parent*: ref RootObj
    buf1*: seq[byte]
    buf2*: seq[byte]
    key*: uint8
    buf3*: seq[byte]

# ProcessRotate
proc read*(_: typedesc[ProcessRotate], io: KaitaiStream, root: ProcessRotate, parent: ref RootObj): owned ProcessRotate =
  result = new(ProcessRotate)
  let root = if root == nil: cast[ProcessRotate](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.buf1 = readBytes(io, int(5))
  result.buf2 = readBytes(io, int(5))
  result.key = readU1(io)
  result.buf3 = readBytes(io, int(5))


proc fromFile*(_: typedesc[ProcessRotate], filename: string): owned ProcessRotate =
  ProcessRotate.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ProcessRotateObj) =
  close(x.io)

