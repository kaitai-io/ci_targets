import kaitai_struct_nim_runtime
import options

template defineEnum(typ) =
  type typ* = distinct int64
  proc `==`*(x, y: typ): bool {.borrow.}

type
  BytesPadTerm* = ref object of KaitaiStruct
    strPad*: string
    strTerm*: string
    strTermAndPad*: string
    strTermInclude*: string
    parent*: KaitaiStruct

proc read*(_: typedesc[BytesPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesPadTerm


proc read*(_: typedesc[BytesPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesPadTerm =
  template this: untyped = result
  this = new(BytesPadTerm)
  let root = if root == nil: cast[KaitaiStruct](this) else: root
  this.io = io
  this.root = root
  this.parent = parent

  this.strPad = this.io.readBytes(int(20)).bytesStripRight(64)
  this.strTerm = this.io.readBytes(int(20)).bytesTerminate(64, false)
  this.strTermAndPad = this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false)
  this.strTermInclude = this.io.readBytes(int(20)).bytesTerminate(64, true)

proc fromFile*(_: typedesc[BytesPadTerm], filename: string): BytesPadTerm =
  BytesPadTerm.read(newKaitaiFileStream(filename), nil, nil)

