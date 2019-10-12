import ../../runtime/nim/kaitai



type
  ProcessCustom* = ref ProcessCustomObj
  ProcessCustomObj* = object
    io: KaitaiStream
    root*: ProcessCustom
    parent*: ref RootObj
    buf1*: seq[byte]
    buf2*: seq[byte]
    key*: uint8
    buf3*: seq[byte]

# ProcessCustom
proc read*(_: typedesc[ProcessCustom], io: KaitaiStream, root: ProcessCustom, parent: ref RootObj): owned ProcessCustom =
  result = new(ProcessCustom)
  let root = if root == nil: cast[ProcessCustom](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.buf1 = readBytes(io, int(5))
  result.buf2 = readBytes(io, int(5))
  result.key = readU1(io)
  result.buf3 = readBytes(io, int(5))


proc fromFile*(_: typedesc[ProcessCustom], filename: string): owned ProcessCustom =
  ProcessCustom.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var ProcessCustomObj) =
  close(x.io)

