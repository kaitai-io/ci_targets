import kaitai_struct_nim_runtime
import options

type
  BytesPadTerm* = ref object of KaitaiStruct
    strPad*: seq[byte]
    strTerm*: seq[byte]
    strTermAndPad*: seq[byte]
    strTermInclude*: seq[byte]
    parent*: KaitaiStruct

proc read*(_: typedesc[BytesPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesPadTerm


proc read*(_: typedesc[BytesPadTerm], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesPadTerm =
  template this: untyped = result
  this = new(BytesPadTerm)
  let root = if root == nil: cast[BytesPadTerm](this) else: cast[BytesPadTerm](root)
  this.io = io
  this.root = root
  this.parent = parent

  let strPadExpr = this.io.readBytes(int(20)).bytesStripRight(64)
  this.strPad = strPadExpr
  let strTermExpr = this.io.readBytes(int(20)).bytesTerminate(64, false)
  this.strTerm = strTermExpr
  let strTermAndPadExpr = this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false)
  this.strTermAndPad = strTermAndPadExpr
  let strTermIncludeExpr = this.io.readBytes(int(20)).bytesTerminate(64, true)
  this.strTermInclude = strTermIncludeExpr

proc fromFile*(_: typedesc[BytesPadTerm], filename: string): BytesPadTerm =
  BytesPadTerm.read(newKaitaiFileStream(filename), nil, nil)

