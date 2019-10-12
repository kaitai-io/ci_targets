import ../../runtime/nim/kaitai



type
  BytesPadTerm* = ref BytesPadTermObj
  BytesPadTermObj* = object
    io: KaitaiStream
    root*: BytesPadTerm
    parent*: ref RootObj
    strPad*: seq[byte]
    strTerm*: seq[byte]
    strTermAndPad*: seq[byte]
    strTermInclude*: seq[byte]

# BytesPadTerm
proc read*(_: typedesc[BytesPadTerm], io: KaitaiStream, root: BytesPadTerm, parent: ref RootObj): owned BytesPadTerm =
  result = new(BytesPadTerm)
  let root = if root == nil: cast[BytesPadTerm](result) else: root
  result.io = io
  result.root = root
  result.parent = parent

  result.strPad = readBytes(io, int(20))
  result.strTerm = readBytes(io, int(20))
  result.strTermAndPad = readBytes(io, int(20))
  result.strTermInclude = readBytes(io, int(20))


proc fromFile*(_: typedesc[BytesPadTerm], filename: string): owned BytesPadTerm =
  BytesPadTerm.read(newKaitaiStream(filename), nil, nil)

proc `=destroy`(x: var BytesPadTermObj) =
  close(x.io)

