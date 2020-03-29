import kaitai_struct_nim_runtime

type
  BytesPadTerm* = ref BytesPadTermObj
  BytesPadTermObj* = object
    strPad*: string
    strTerm*: string
    strTermAndPad*: string
    strTermInclude*: string
    io*: KaitaiStream
    root*: BytesPadTerm
    parent*: ref RootObj

### BytesPadTerm ###
proc read*(_: typedesc[BytesPadTerm], io: KaitaiStream, root: BytesPadTerm, parent: ref RootObj): BytesPadTerm =
  result = new(BytesPadTerm)
  let root = if root == nil: cast[BytesPadTerm](result) else: root
  result.io = io
  result.root = root
  result.parent = parent
  let strPad = io.readBytes(int(20)).bytesStripRight(64)
  result.strPad = strPad
  let strTerm = io.readBytes(int(20)).bytesTerminate(64, false)
  result.strTerm = strTerm
  let strTermAndPad = io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false)
  result.strTermAndPad = strTermAndPad
  let strTermInclude = io.readBytes(int(20)).bytesTerminate(64, true)
  result.strTermInclude = strTermInclude

proc fromFile*(_: typedesc[BytesPadTerm], filename: string): BytesPadTerm =
  BytesPadTerm.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BytesPadTermObj) =
  close(x.io)

