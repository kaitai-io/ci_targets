import ../../kaitai_struct_nim_runtime/kaitai_struct_nim_runtime



type
  ProcessXor4Const* = ref ProcessXor4ConstObj
  ProcessXor4ConstObj* = object
    io: KaitaiStream
    root*: ProcessXor4Const
    parent*: ref RootObj
    key*: seq[byte]
    buf*: seq[byte]

# ProcessXor4Const
proc read*(_: typedesc[ProcessXor4Const], io: KaitaiStream, root: ProcessXor4Const, parent: ref RootObj): owned ProcessXor4Const =
  result = new(ProcessXor4Const)
  let root = if root == nil: cast[ProcessXor4Const](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  let key = readBytes(io, int(4))
  result.key = key
  let buf = readBytesFull(io).processXor(@[-20, -69, -93, 20].mapIt(toByte(it)))
  result.buf = buf


proc fromFile*(_: typedesc[ProcessXor4Const], filename: string): owned ProcessXor4Const =
  ProcessXor4Const.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ProcessXor4ConstObj) =
  close(x.io)

