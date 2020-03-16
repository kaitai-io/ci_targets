import ../../kaitai_struct_nim_runtime/kaitai_struct_nim_runtime



type
  ProcessXorValue* = ref ProcessXorValueObj
  ProcessXorValueObj* = object
    io: KaitaiStream
    root*: ProcessXorValue
    parent*: ref RootObj
    key*: uint8
    buf*: seq[byte]

# ProcessXorValue
proc read*(_: typedesc[ProcessXorValue], io: KaitaiStream, root: ProcessXorValue, parent: ref RootObj): owned ProcessXorValue =
  result = new(ProcessXorValue)
  let root = if root == nil: cast[ProcessXorValue](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let key = readU1(io)
  result.key = key
  let buf = readBytesFull(io).processXor(result.key)
  result.buf = buf


proc fromFile*(_: typedesc[ProcessXorValue], filename: string): owned ProcessXorValue =
  ProcessXorValue.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXorValueObj) =
  close(x.io)

