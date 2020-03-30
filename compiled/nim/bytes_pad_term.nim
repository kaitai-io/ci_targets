import kaitai_struct_nim_runtime
import options

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

## BytesPadTerm
proc read*(_: typedesc[BytesPadTerm], io: KaitaiStream, root: BytesPadTerm, parent: ref RootObj): BytesPadTerm =
  let this = new(BytesPadTerm)
  let root = if root == nil: cast[BytesPadTerm](result) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.strPad = this.io.readBytes(int(20)).bytesStripRight(64)
  this.strTerm = this.io.readBytes(int(20)).bytesTerminate(64, false)
  this.strTermAndPad = this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false)
  this.strTermInclude = this.io.readBytes(int(20)).bytesTerminate(64, true)
  result = this

proc fromFile*(_: typedesc[BytesPadTerm], filename: string): BytesPadTerm =
  BytesPadTerm.read(newKaitaiFileStream(filename), nil, nil)

proc `=destroy`(x: var BytesPadTermObj) =
  close(x.io)

