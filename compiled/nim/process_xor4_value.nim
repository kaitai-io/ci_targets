import ../runtime/nim/kaitai_struct_nim_runtime



type
  ProcessXor4Value* = ref ProcessXor4ValueObj
  ProcessXor4ValueObj* = object
    io: KaitaiStream
    root*: ProcessXor4Value
    parent*: ref RootObj
    key*: seq[byte]
    buf*: seq[byte]

# ProcessXor4Value
proc read*(_: typedesc[ProcessXor4Value], io: KaitaiStream, root: ProcessXor4Value, parent: ref RootObj): owned ProcessXor4Value =
  result = new(ProcessXor4Value)
  let root = if root == nil: cast[ProcessXor4Value](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let key = readBytes(io, int(4))
  result.key = key
  let buf = readBytesFull(io).processXor(result.key)
  result.buf = buf


proc fromFile*(_: typedesc[ProcessXor4Value], filename: string): owned ProcessXor4Value =
  ProcessXor4Value.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXor4ValueObj) =
  close(x.io)

