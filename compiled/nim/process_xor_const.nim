import ../../runtime/nim/kaitai



type
  ProcessXorConst* = ref ProcessXorConstObj
  ProcessXorConstObj* = object
    io: KaitaiStream
    root*: ProcessXorConst
    parent*: ref RootObj
    key*: uint8
    buf*: seq[byte]

# ProcessXorConst
proc read*(_: typedesc[ProcessXorConst], io: KaitaiStream, root: ProcessXorConst, parent: ref RootObj): owned ProcessXorConst =
  result = new(ProcessXorConst)
  let root = if root == nil: cast[ProcessXorConst](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.key = readU1(io)
  result.buf = readBytesFull(io)


proc fromFile*(_: typedesc[ProcessXorConst], filename: string): owned ProcessXorConst =
  ProcessXorConst.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXorConstObj) =
  close(x.io)

