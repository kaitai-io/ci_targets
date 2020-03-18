import kaitai_struct_nim_runtime



type
  ProcessXorConst* = ref ProcessXorConstObj
  ProcessXorConstObj* = object
    io: KaitaiStream
    root*: ProcessXorConst
    parent*: ref RootObj
    key*: uint8
    buf*: string

# ProcessXorConst
proc read*(_: typedesc[ProcessXorConst], io: KaitaiStream, root: ProcessXorConst, parent: ref RootObj): owned ProcessXorConst =
  result = new(ProcessXorConst)
  let root = if root == nil: cast[ProcessXorConst](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let key = readU1(io)
  result.key = key
  let buf = readBytesFull(io).processXor(255)
  result.buf = buf


proc fromFile*(_: typedesc[ProcessXorConst], filename: string): owned ProcessXorConst =
  ProcessXorConst.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXorConstObj) =
  close(x.io)

