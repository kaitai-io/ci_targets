import kaitai_struct_nim_runtime
import options

type
  BytesPadTermEmpty* = ref object of KaitaiStruct
    `strPad`*: seq[byte]
    `strTerm`*: seq[byte]
    `strTermAndPad`*: seq[byte]
    `strTermInclude`*: seq[byte]
    `parent`*: KaitaiStruct

proc read*(_: typedesc[BytesPadTermEmpty], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesPadTermEmpty


proc read*(_: typedesc[BytesPadTermEmpty], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): BytesPadTermEmpty =
  template this: untyped = result
  this = new(BytesPadTermEmpty)
  let root = if root == nil: cast[BytesPadTermEmpty](this) else: cast[BytesPadTermEmpty](root)
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

proc fromFile*(_: typedesc[BytesPadTermEmpty], filename: string): BytesPadTermEmpty =
  BytesPadTermEmpty.read(newKaitaiFileStream(filename), nil, nil)

