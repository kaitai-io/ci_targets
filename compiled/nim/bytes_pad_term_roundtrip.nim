import kaitai_struct_nim_runtime
import options

type
  BytesPadTermRoundtrip* = ref object of KaitaiStruct
    `strPad`*: seq[byte]
    `strTerm`*: seq[byte]
    `strTermAndPad`*: seq[byte]
    `strTermInclude`*: seq[byte]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BytesPadTermRoundtrip], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesPadTermRoundtrip


proc read*(_: typedesc[BytesPadTermRoundtrip], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesPadTermRoundtrip =
  template this: untyped = result
  this = new(BytesPadTermRoundtrip)
  let root = if root == nil: cast[BytesPadTermRoundtrip](this) else: cast[BytesPadTermRoundtrip](root)
  this.io = io
  this.root = root
  this.parent = parent

  let strPadExpr = this.io.readBytes(int(20)).bytesStripRight(64)
  this.strPad = strPadExpr
  let strTermExpr = this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false)
  this.strTerm = strTermExpr
  let strTermAndPadExpr = this.io.readBytes(int(20)).bytesStripRight(43).bytesTerminate(64, false)
  this.strTermAndPad = strTermAndPadExpr
  let strTermIncludeExpr = this.io.readBytes(int(20)).bytesStripRight(46).bytesTerminate(64, true)
  this.strTermInclude = strTermIncludeExpr

proc fromFile*(_: typedesc[BytesPadTermRoundtrip], filename: string): BytesPadTermRoundtrip =
  BytesPadTermRoundtrip.read(newKaitaiFileStream(filename), nil, nil)

